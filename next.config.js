/** @type {import('next').NextConfig} */

const withSerwist = require('@serwist/next').default({
  swSrc: 'app/sw.ts',
  swDest: 'public/sw.js',
  disable: process.env.NODE_ENV === 'development',
});

module.exports = withSerwist({
  reactStrictMode: true,
  output: 'standalone', // Enable standalone output for Docker
});
