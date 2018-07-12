# See how many patches failed twice to install ("pushed" status)
SELECT COUNT(hotfix.`HotFixID`) FROM hotfix WHERE installed=0 AND pushed=1 AND approved=1

# Reset all "pushed" patches
UPDATE hotfix SET pushed='0' WHERE installed=0 AND pushed=1 AND approved=1

# Remove empty Agents from patches
DELETE FROM hotfix WHERE computerid NOT IN (SELECT computerid FROM computers)