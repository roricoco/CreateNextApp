@echo off
title Create Next App v1.1.1
echo Create Next App v1.1.1
echo.
echo Includes Packages
echo  - @types/styled-components
echo  - @trivago/prettier-plugin-sort-imports
echo  - babel-plugin-styled-components
echo  - clsx
echo  - escape-string-regexp
echo  - eslint
echo  - eslint-config-prettier
echo  - formik
echo  - framer-motion
echo  - inquirer
echo  - js-cookie
echo  - lodash
echo  - mime-types
echo  - moment
echo  - prettier
echo  - qs
echo  - react-transition-group
echo  - styled-components
echo  - swr
echo  - typescript
echo  - typescript-styled-plugin
echo.
echo Further work in progress
echo  - Edit tsconfig.json
echo  - Create .babelrc
echo  - Create .eslintrc
echo  - Create .prettierrc
echo.

set /p name=Set ProjectName (Name can no longer contain capital letters) :

yarn create next-app %name% --typescript && cd %name% && echo. && yarn add axios && echo. && yarn add babel-plugin-styled-components && echo. && yarn add clsx && echo. && yarn add escape-string-regexp && echo. && yarn add formik && echo. && yarn add framer-motion && echo. && yarn add js-cookie && echo. && yarn add lodash && echo. && yarn add mime-types && echo. && yarn add moment && echo. && yarn add qs && echo. && yarn add react-transition-group && echo. && yarn add @types/styled-components --dev && echo. && yarn add swr && echo. && yarn add typescript-styled-plugin --dev && echo. && yarn add @trivago/prettier-plugin-sort-imports --dev && echo. && yarn add inquirer && echo. && yarn add eslint-config-prettier --dev && echo. && yarn add prettier --dev && echo. && mkdir components && echo %name% Project Created! && echo. && timeout /t 5 && cls && echo {> tsconfig.json && echo   "compilerOptions": {>> tsconfig.json && echo     "target": "es5",>> tsconfig.json && echo     "lib": ["dom", "dom.iterable", "esnext"],>> tsconfig.json && echo     "allowJs": true,>> tsconfig.json && echo     "skipLibCheck": true,>> tsconfig.json && echo     "strict": true,>> tsconfig.json && echo     "forceConsistentCasingInFileNames": true,>> tsconfig.json && echo     "noEmit": true,>> tsconfig.json && echo     "esModuleInterop": true,>> tsconfig.json && echo     "module": "esnext",>> tsconfig.json && echo     "moduleResolution": "node",>> tsconfig.json && echo     "resolveJsonModule": true,>> tsconfig.json && echo     "isolatedModules": true,>> tsconfig.json && echo     "jsx": "preserve",>> tsconfig.json && echo     "baseUrl": ".",>> tsconfig.json && echo     "paths": {>> tsconfig.json && echo       "~/*": ["./src/*"],>> tsconfig.json && echo       "~images/*": ["./src/assets/images/*"]>> tsconfig.json && echo     },>> tsconfig.json && echo     "incremental": true,>> tsconfig.json && echo     "plugins": [>> tsconfig.json && echo       {>> tsconfig.json && echo         "name": "typescript-styled-plugin">> tsconfig.json && echo       }>> tsconfig.json && echo     ]>> tsconfig.json && echo   },>> tsconfig.json && echo   "include": ["next-env.d.ts", "**/*.ts", "**/*.tsx", "src/types/*", "src/*"],>> tsconfig.json && echo   "exclude": ["node_modules"]>> tsconfig.json && echo }>> tsconfig.json && echo Setting tsconfig.json && echo {> .babelrc && echo   "presets": ["next/babel"],>> .babelrc && echo   "plugins": [>> .babelrc && echo     [>> .babelrc && echo       "styled-components",>> .babelrc && echo       {>> .babelrc && echo         "ssr": true>> .babelrc && echo       }>> .babelrc && echo     ]>> .babelrc && echo   ]>> .babelrc && echo }>> .babelrc && echo Created .babelrc  && echo {> .eslintrc.json && echo   "extends": ["next/core-web-vitals", "prettier"]>> .eslintrc.json && echo }>> .eslintrc.json && echo Created .eslintrc  && echo {> .prettierrc && echo   "arrowParens": "avoid",>> .prettierrc && echo   "endOfLine": "lf",>> .prettierrc && echo   "singleQuote": true,>> .prettierrc && echo   "trailingComma": "all",>> .prettierrc && echo   "overrides": [>> .prettierrc && echo     {>> .prettierrc && echo       "files": "*.json",>> .prettierrc && echo       "options": {>> .prettierrc && echo         "printWidth": 200>> .prettierrc && echo       }>> .prettierrc && echo     }>> .prettierrc && echo   ],>> .prettierrc && echo   "importOrder": [>> .prettierrc && echo     "react",>> .prettierrc && echo     "next",>> .prettierrc && echo     "^~(.+)$",>> .prettierrc && echo     "^[./]",>> .prettierrc && echo     "^[a-zA-Z@/\\-]*\\.[a-zA-Z0-9]*$",>> .prettierrc && echo     "^(.+)$">> .prettierrc && echo   ],>> .prettierrc && echo   "importOrderSeparation": true,>> .prettierrc && echo   "experimentalBabelParserPluginsList": ["jsx", "typescript", "typescriptreact"]>> .prettierrc && echo }>> .prettierrc && echo Created .prettier && echo. && pause
pause