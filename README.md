# Quiz hub

A static quiz and flashcard site for GitHub Pages.

- **Students** open the site and see every published quiz (home page `#/`).
- **Teacher** opens `#/teacher` (the "Teacher" link in the top bar), uploads a .docx or text file, sets the answers, and clicks Publish.

## One-time setup

1. Create a repository (for example `yourname.github.io`) and upload everything in this folder, keeping the `quizzes/` folder.
2. In the repository go to Settings > Pages, choose "Deploy from a branch", pick `main` and `/ (root)`, and save.
3. Open `https://yourname.github.io/` (or `.../repo-name/`). The first visit shows a sample quiz until you publish one.

## Teacher token (needed once per device)

1. Go to https://github.com/settings/personal-access-tokens/new
2. Repository access: **Only select repositories**, choose your quiz repository.
3. Permissions > Repository permissions > **Contents: Read and write**.
4. Generate the token and copy it.
5. On the Teacher page paste the repository name and token, then Connect.

The token stays in your browser only. Without "Remember on this device" it is forgotten when you close the tab. Never share it.

## Publishing

1. Upload a .docx or .txt file, or paste the questions.
2. Tap the letter of the correct option on each question, or paste an answer key such as `1. B  2. C`.
3. Check the title and press **Publish to students**. Pages takes up to a minute to update.

Published quizzes are saved as `quizzes/<name>.json` with a list in `quizzes/index.json`. You can also edit or delete them from the Teacher page.

## Notes

- Changing the site name: edit `SITE_TITLE` and `SITE_TAGLINE` at the top of the script in `index.html`.
- The Teacher page is not secret, but nobody can publish or delete without your token.
- Students' best scores are saved only in their own browser.
