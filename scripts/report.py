"""Turn a Ward JUnit report into a Markdown summary for a pull request body."""

import sys
import xml.etree.ElementTree as ET
from pathlib import Path


def main(path: str) -> None:
    report = Path(path)
    if not report.exists():
        print(
            "The test run did not produce a report: the pack most likely failed to load. See the workflow logs."
        )
        return

    root = ET.parse(report).getroot()
    cases = root.iter("testcase")
    total, failures = 0, []
    for case in cases:
        total += 1
        problem = case.find("failure")
        if problem is None:
            problem = case.find("error")
        if problem is not None:
            message = (
                (problem.get("message") or problem.text or "").strip().splitlines()
            )
            failures.append((case.get("name", "?"), message[0] if message else ""))

    print(f"**{total - len(failures)} / {total}** tests passed.")
    if failures:
        print()
        print("| Test | Failure |")
        print("| --- | --- |")
        for name, message in failures[:50]:
            cell = message.replace("|", "\\|")
            print(f"| `{name}` | {cell} |")
        if len(failures) > 50:
            print(f"\n…and {len(failures) - 50} more.")


if __name__ == "__main__":
    main(sys.argv[1])
