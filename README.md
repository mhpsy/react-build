## monorepo安装依赖

```bash
pnpm i eslint -D -w
```

先安装antfu/eslint-config

```bash
pnpm i @antfu/eslint-config -D -w
```

记着要配置上.vscode/settings.json

## 添加husky
作用是提交前自动执行命令

```
pnpm i husky -D -w
```

编辑.husky/_/pre-commit

```
#!/usr/bin/env sh
pnpm lint --fix
```

package.json添加
```
"prepare": "husky install"
```

## 添加 commitlint

```
pnpm i @commitlint/config-conventional @commitlint/cli -D -w
```

编辑.commitlintrc.js

```
module.exports = {
  extends: ['@commitlint/config-conventional'],
}
```

编辑.husky/_/commit-msg

```
#!/usr/bin/env sh
npx --no-install commitlint --edit "$1"
```
