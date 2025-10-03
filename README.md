This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

## Demo

You can check [demo](https://next-typescript-pwa-starter.vercel.app/)

## Features

- [React 19](https://react.dev/blog/2024/12/05/react-19) - Latest React version with improved performance
- [Next.js 15](https://nextjs.org/blog/next-15) - Latest Next.js with Turbopack and React 19 support
- [TypeScript 5.7](https://www.typescriptlang.org/) - Type-safe development with latest TypeScript
- [Serwist](https://serwist.pages.dev/) - Modern PWA toolkit (successor to next-pwa)
- [Biome](https://biomejs.dev/) - Fast formatter and linter (replaces ESLint + Prettier)
- [pnpm](https://pnpm.io/) - Fast, disk space efficient package manager
- [Docker](https://docs.docker.com/) - Container support for deployment
- [Husky](https://typicode.github.io/husky/) - Git hooks for code quality
- [lint-staged](https://github.com/okonet/lint-staged) - Run linters on staged files

## Usage

This project requires Node.js >= 22.0.0 and pnpm >= 9.0.0

### Installation

```bash
git clone https://github.com/danangekal/next-typescript-pwa-starter.git
pnpm install
```

#### Development

```bash
pnpm dev              # Start dev server with Turbopack
pnpm dev:legacy       # Start dev server without Turbopack (if needed)
```

#### Production

```bash
pnpm build
pnpm start
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `pages/index.tsx`. The page auto-updates as you edit the file.

[API routes](https://nextjs.org/docs/api-routes/introduction) can be accessed on [http://localhost:3000/api/hello](http://localhost:3000/api/hello). This endpoint can be edited in `pages/api/hello.ts`.

The `pages/api` directory is mapped to `/api/*`. Files in this directory are treated as [API routes](https://nextjs.org/docs/api-routes/introduction) instead of React pages.

This project uses [`next/font`](https://nextjs.org/docs/basic-features/font-optimization) to automatically optimize and load Inter, a custom Google Font.

### Code Quality

This project uses Biome for linting and formatting:

```bash
pnpm lint              # Lint code with Biome
pnpm format            # Format code with Biome
pnpm check             # Lint and format (auto-fix) with Biome
pnpm type-check        # TypeScript type checking
pnpm type-check:watch  # TypeScript type checking in watch mode
```

Pre-commit hooks automatically run via Husky and lint-staged to ensure code quality.

### Docker

#### Build

```bash
docker build -t next-typescript-pwa-starter .
```

#### Run

```bash
docker run --rm -it -p 3000:3000 next-typescript-pwa-starter
```

#### Docker Compose

```bash
docker-compose up
```

#### Pre-built Images

You can use images available on Docker Hub: [next-typescript-pwa-starter](https://hub.docker.com/r/danangekal/next-typescript-pwa-starter)

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
