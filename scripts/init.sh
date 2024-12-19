#!/usr/bin/env sh

npx husky install

echo "husky install success"
echo "#!/usr/bin/env sh
pnpm lint --fix" > .husky/_/pre-commit

echo "#!/usr/bin/env sh
npx --no-install commitlint --edit \"\$1\"" > .husky/_/commit-msg

echo "husky init success"
