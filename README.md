<div align="center" width="100%">
  <img src="./assets/logo.png" width="150" />
</div>
<div align="center" width="100%">
    <h2>💪 Go + React</h2>
    <p> Starter template for a fullstack web application using Go and React with TypeScript.</p>
    <a target="_blank" href="https://github.com/AkashRajpurohit/go-react-typescript-template/actions"><img src="https://github.com/AkashRajpurohit/go-react-typescript-template/actions/workflows/release.yml/badge.svg?event=push" /></a>
    <a href="https://goreportcard.com/report/github.com/AkashRajpurohit/go-react-typescript-template"><img alt="Go Report Card" src="https://goreportcard.com/badge/github.com/AkashRajpurohit/go-react-typescript-template">
    <a target="_blank" href="https://github.com/AkashRajpurohit/go-react-typescript-template/releases"><img src="https://img.shields.io/github/downloads/AkashRajpurohit/go-react-typescript-template/total" /></a>
    <img alt="Visitors count" src="https://visitor-badge.laobi.icu/badge?page_id=@akashrajpurohit~go-react-template.visitor-badge&style=flat-square">
    <a target="_blank" href="https://github.com/AkashRajpurohit/go-react-typescript-template/releases"><img src="https://img.shields.io/github/go-mod/go-version/AkashRajpurohit/go-react-typescript-template?filename=go.mod" /></a>
    <a target="_blank" href="https://github.com/AkashRajpurohit/go-react-typescript-template/releases"><img src="https://img.shields.io/github/v/release/AkashRajpurohit/go-react-typescript-template?display_name=tag" /></a>
    <a href="#-contributors"><img alt="All Contributors" src="https://img.shields.io/github/all-contributors/AkashRajpurohit/go-react-typescript-template?color=1f85bf"></a>
    <a target="_blank" href="https://github.com/AkashRajpurohit/go-react-typescript-template"><img src="https://img.shields.io/github/stars/AkashRajpurohit/go-react-typescript-template" /></a>
    <br />
    <br />
    <p align="center">
      <a href="https://github.com/AkashRajpurohit/go-react-typescript-template/issues/new?template=bug_report.yml">Bug report</a>
      ·
      <a href="https://github.com/AkashRajpurohit/go-react-typescript-template/issues/new?template=feature_request.yml">Feature request</a>
    </p>
</div>
<hr />

This is a starter template for a fullstack web application using Go and React with TypeScript. The frontend is built with [Vite](https://vite.dev/), a modern build tool that is much faster than Create React App.

The backend is built with [Go](https://go.dev/), a statically typed language that is great for building APIs.

### Features

- 🏗️ Go backend without any web framework (just the standard library, but you can add one if you want).
- ❄️ React frontend with TypeScript and Vite (API calls are proxied to the Go backend).
- 🏃🏽‍♂️ [PNPM](https://pnpm.io/) as package manager for the frontend application.
- ⚡️ Hot module reloading for both the frontend and backend (using [air](https://github.com/air-verse/air) for the backend).
- 📦 Package and release individual binaries as well as with Docker 🐋.
- ⚙️ Makefile for common tasks.

### Getting started

Click on the "Use this template" button from the options to create a new repository using this template. This will create a new repository with the same structure as this repository.

Few things to keep in mind before you start:

- Change the module name in `go.mod` to your module name.
- Replace all the instances of `myapp` with your application name (including the Dockerfile).
- Install PNPM globally by running `npm install -g pnpm` and then run `pnpm install` to install the dependencies in the `web` directory.
- Install air by running `go install github.com/air-verse/air@latest` to install the hot reload tool for the backend.

### Development

The project leverages make for common tasks. Here are some of the common tasks:

- `make dev` - Start the development server for both the frontend and backend.
- `make build` - Build the frontend and backend.
- `make test` - Run tests for the backend.

Read more about the available tasks in the [Makefile](./Makefile).

### Deployment

You can deploy the application using Docker. You can build the Docker image by running `make docker-build` and then run the image using `docker run -p 8080:8080 myapp`.

The template also comes with a GitHub Actions workflow that builds and releases the binaries for Linux, macOS, and Windows. The binaries are attached to the release and can be downloaded from there.

To initiate a new release, create a new tag and push it to the repository. The GitHub Actions workflow will automatically build and release the binaries and attach them to the release as well as create a new docker image and push it to the GitHub Container Registry.

## 🙏🏻 Support

If you found the project helpful, consider giving it a star ⭐️. If you would like to support the project in other ways, you can [buy me a coffee](https://ko-fi.com/akashrajpurohit) or [sponsor me on GitHub](https://github.com/sponsors/AkashRajpurohit).

## 🐛 Bugs or Requests

If you encounter any problems feel free to open an [issue](https://github.com/AkashRajpurohit/go-react-typescript-template/issues/new?template=bug_report.yml). If you feel the project is missing a feature, please raise a [ticket](https://github.com/AkashRajpurohit/go-react-typescript-template/issues/new?template=feature_request.yml) on GitHub and I'll look into it. Pull requests are also welcome.

## 👀 Who am I?

[![Website Badge](https://img.shields.io/badge/-akashrajpurohit.com-3b5998?logo=google-chrome&logoColor=white)](https://akashrajpurohit.com/)
[![Linkedin Badge](https://img.shields.io/badge/-@AkashRajpurohit-0e76a8?logo=Linkedin&logoColor=white)](https://linkedin.com/in/AkashRajpurohit)
[![Twitter Badge](https://img.shields.io/twitter/follow/akashwhocodes)](https://twitter.com/AkashWhoCodes)
[![Mastodon Follow](https://img.shields.io/mastodon/follow/112372456922065040)](https://mastodon.social/@akashrajpurohit)