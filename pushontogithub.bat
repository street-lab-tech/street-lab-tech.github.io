@echo off

set timestamp=%date:/=-%_%time::=-%

echo "About to build site..."
call jekyll build > build_output.txt 2>&1
echo Exit Code: %errorlevel%
echo "Build command executed."

pause

echo "Adding changes to Git..."
git add --all
echo "Add command executed."

pause

echo "Committing changes to Git..."
git commit -m "Update site at %timestamp%"
echo "Commit command executed."

pause

echo "Pushing changes to GitHub..."
git push
echo "Push command executed."

pause

echo "Site updated at %timestamp%"
