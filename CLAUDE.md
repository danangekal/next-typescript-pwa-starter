# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Next.js 15 + React 19 + TypeScript + PWA starter template with strict TypeScript configuration and Biome for code quality.

**Key Technologies:**
- Next.js 15.5.4 (Pages Router) with Turbopack
- React 19.2.0
- TypeScript 5.7 with strict mode enabled
- Serwist (successor to next-pwa) for Progressive Web App functionality
- Biome for linting and formatting
- pnpm for package management

## Common Commands

### Development
```bash
pnpm dev              # Start development server with Turbopack (PWA disabled in dev)
pnpm type-check       # Run TypeScript type checking without emitting files
pnpm type-check:watch # Run TypeScript type checking in watch mode
pnpm lint             # Run Biome lint checks on the codebase
pnpm format           # Format all code with Biome
pnpm check            # Run Biome lint and format (auto-fix) on the codebase
pnpm telemetry        # Check Next.js telemetry status
```

### Build & Production
```bash
pnpm build   # Build production bundle
pnpm start   # Start production server (requires build first)
```

### Docker
```bash
docker build -t next-typescript-pwa-starter .
docker run --rm -it -p 3000:3000 next-typescript-pwa-starter
docker-compose up
```

## Architecture

### Directory Structure
- `pages/` - Next.js Pages Router
  - `_app.tsx` - Custom App component
  - `_document.tsx` - Custom Document component
  - `api/` - API routes
  - `index.tsx` - Home page
- `components/` - React components (e.g., nav.tsx)
- `styles/` - CSS/styling files
- `public/` - Static assets and PWA manifest
- `sw.js` - Service worker source file

### PWA Configuration
PWA functionality is configured using **Serwist** (next-pwa successor):
- Configuration in `next.config.js` using `@serwist/next`
- Service worker source: `sw.js` (root) → builds to `public/sw.js`
- **Disabled** in development mode (only works in production)
- Manifest file: `public/manifest.json`
- PWA meta tags and manifest link in `pages/_document.tsx`
- Icons located in `public/icons/`

### TypeScript Configuration
Strict TypeScript settings enforced:
- `strict: true` with all strict flags enabled
- `noUnusedLocals` and `noUnusedParameters` enabled
- Path alias `@/*` maps to project root
- Target: ES5, Module: ESNext

### Code Quality with Biome
Pre-commit hooks automatically run via Husky + lint-staged:
- Configuration in `biome.json` and `.lintstagedrc.json`
- Husky hook in `.husky/pre-commit` runs `pnpm lint-staged`
- lint-staged runs Biome checks on staged files only

Biome rules of note:
- `noConsoleLog: error` - Console.log statements are errors
- `noUnusedVariables: error` - Unused variables are errors
- `noExplicitAny: warn` - Explicit any types trigger warnings
- Auto-organizes imports

### CI/CD with GitHub Actions
GitHub Actions workflow (`.github/workflows/main.yml`) runs on push/PR:
1. **lint-and-test** job: Runs Biome checks, type checking, and tests
2. **build** job: Builds the Next.js application
3. **docker** job: Builds and pushes Docker image (main branch only)

## Node & Package Manager Requirements
- Node >= 22.0.0
- pnpm >= 9.0.0 (packageManager: pnpm@9.15.3)

## Important Notes
- This project uses the **Pages Router** (Next.js 15), not the App Router
- **Turbopack** is enabled by default for faster development builds (`pnpm dev --turbopack`)
- PWA features only work in production builds (Serwist disabled in dev)
- No test framework is configured yet (test script is a placeholder)
- Console.log statements will fail Biome checks - remove before committing
- Uses Serwist instead of next-pwa for better Next.js 15 compatibility
