This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

## Demo

You can check [demo](https://next-typescript-pwa-starter.vercel.app/)

## Features

- [React.js 17](https://reactjs.org/blog/2020/10/20/react-v17.html) - Blog introduce react v17.0.
- [Next.js 10](https://nextjs.org/blog/next-10) - Blog introduce next.js 10.
- [Typescript 4](https://www.typescriptlang.org/) - Documentation of typescript.
- [Next PWA 5](https://www.npmjs.com/package/next-pwa) - Documentation of next pwa.
- [Docker](https://docs.docker.com/) - Documentation of docker.
- [Eslint 7](https://eslint.org/docs/user-guide/getting-started) - Documentation of eslint.
- [Prettier 2](https://prettier.io/docs/en/index.html) - Documentation of prettier.
- [Husky 5](https://typicode.github.io/husky/#/) - Documentation of husky.
- [Lint Staged 10](https://github.com/okonet/lint-staged) - Documentation of lint staged.

## Usage

This project using node >= 12 & yarn

### Installation

```bash
git clone https://github.com/danangekal/next-typescript-pwa-starter.git
yarn install
```

#### Development

```bash
yarn dev
```

#### Production

```bash
yarn build
yarn start
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `pages/index.tsx`. The page auto-updates as you edit the file.

[API routes](https://nextjs.org/docs/api-routes/introduction) can be accessed on [http://localhost:3000/api/hello](http://localhost:3000/api/hello). This endpoint can be edited in `pages/api/hello.ts`.

The `pages/api` directory is mapped to `/api/*`. Files in this directory are treated as [API routes](https://nextjs.org/docs/api-routes/introduction) instead of React pages.

#### Docker Build

```bash
docker build -t next-typescript-pwa-starter .
```

#### Docker Run

```bash
docker run --rm -it -p 3000:3000 next-typescript-pwa-starter
```

#### Docker Compose

```bash
docker-compose up
```

#### Docker Images

You can use images available on docker hub [next-typescript-pwa-starter](https://hub.docker.com/r/danangekal/next-typescript-pwa-starter).

```bash
docker pull danangekal/next-typescript-pwa-starter
```

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.

---

Copyright © 2021 by Danang Eko Alfianto
