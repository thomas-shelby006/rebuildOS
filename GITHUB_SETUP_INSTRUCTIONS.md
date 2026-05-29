# GitHub Setup Instructions for Rebuild OS

## Important privacy rule
Create a **private** repository. Do not make this public. This package contains personal operating-system context.

Recommended repository name:

```text
rebuild-os
```

## Option A — GitHub web upload
Use this if you do not want command line.

1. Go to GitHub.
2. Click `+` in the top-right.
3. Click `New repository`.
4. Name it `rebuild-os`.
5. Set visibility to **Private**.
6. Do not add a README/license/gitignore from GitHub if you are uploading this package.
7. Create the repository.
8. Extract this ZIP on your computer.
9. Open the extracted folder.
10. Upload the extracted files/folders to the repository.
11. Commit with message:

```text
Initial Rebuild OS deployment package
```

GitHub web upload notes:
- Do **not** upload only this ZIP. Kiro/browser AI needs readable Markdown files in the repo.
- Upload the extracted contents.
- GitHub browser upload has limits, so if upload fails, use Option B.

## Option B — GitHub Desktop or command line
Best if web upload struggles with many files.

1. Create the private GitHub repo first.
2. Extract this ZIP locally.
3. Use GitHub Desktop to add the local folder and publish/push it to the private repo.

Or use command line:

```powershell
cd "PATH_TO_EXTRACTED_REBUILD_OS_FOLDER"
git init
git add .
git commit -m "Initial Rebuild OS deployment package"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/rebuild-os.git
git push -u origin main
```

## After upload
Open Kiro browser and point it to the private GitHub repo.
Use the prompt in `KIRO_BROWSER_PROMPT.md`.

## What Kiro should do
Kiro should review/edit the package files. It should not be used as the daily Rebuild OS companion.

Daily use should happen in ChatGPT Plus Project.
