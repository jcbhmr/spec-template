# Specification template

📄 Template for formal technical specifications

<div align="center">

![](https://thum.io/get/noanimate/crop/800/https://jcbhmr.github.io/spec-template/)

</div>

🧠 Ready for your next big idea \
🔖 Includes bibliography examples \
🌐 Publishes to GitHub Pages \
📂 Uses multiple `.bs` files

## Usage

![GitHub](https://img.shields.io/static/v1?style=for-the-badge&message=GitHub&color=181717&logo=GitHub&logoColor=FFFFFF&label=)

Click the <kbd>Use this template</kbd> button to get started!

<div align="center">

![](https://i.imgur.com/Qq5OknS.png)

</div>

### What's included

1. An example specification document
2. A dev preview script that watches `src/index.bs`
3. A GitHub Action to deploy the spec to GitHub Pages

### Manual steps

After using the template, you'll need to do a few things manually that we can't
do for you:

1. Turn on GitHub Pages in the Settings tab
2. Find and replace every `jcbhmr.github.io/spec-template` with _your URL_
3. Find and replace every `jcbhmr/spec-template` with _your repo_
4. Remove the top half of `README.md`
5. Add your own content! 🎉

<details>
  <summary>If your repository has a full-stop character in it...</summary>

...then you'll need to do some additional config. Instead of just the
`Repository: jcbhmr/spec-template` that you normally can use, you'll need to
include all the derivative metadata that Bikeshed can't generate when the repo
has a dot in the name.

```bs
<pre class="metadata">
URL: https://jcbhmr.github.io/spec-template/
TR: https://jcbhmr.github.io/spec-template/
Repository: https://github.com/jcbhmr/spec-template jcbhmr/spec-template
Issue Tracking: GitHub https://github.com/jcbhmr/spec-template/issues
Issue Tracker Template: https://github.com/jcbhmr/spec-template/issues/{0}
</pre>
```

</details>

---

# Quantitative awesomeness specification

😎 Determine how awesome you are using science & statistics

<div align="center">

![](https://thum.io/get/noanimate/crop/800/https://jcbhmr.github.io/spec-template/)

**[Overview](https://github.com/jcbhmr/spec-template#readme)** |
[Specification](https://jcbhmr.github.io/spec-template/)

</div>

👨‍🔬 Uses cutting-edge science techniques \
🔬 Accounts for minute personality details \
👨‍💻 Defines an error-tolerant algorithm \
❤️ Easy to implement

## Usage

![HTML5](https://img.shields.io/static/v1?style=for-the-badge&message=HTML5&color=E34F26&logo=HTML5&logoColor=FFFFFF&label=)

You can view the [Quantitative awesomeness] specification on GitHub Pages.

## Development

![Codespaces](https://img.shields.io/static/v1?style=for-the-badge&message=Codespaces&color=181717&logo=GitHub&logoColor=FFFFFF&label=)
![Devcontainers](https://img.shields.io/static/v1?style=for-the-badge&message=Devcontainers&color=2496ED&logo=Docker&logoColor=FFFFFF&label=)
![Bikeshed](https://img.shields.io/static/v1?style=for-the-badge&message=Bikeshed&color=005A9C&logo=&logoColor=FFFFFF&label=)

This project makes heavy use of [Bikeshed] to generate the specification text.
Bikeshed is an HTML-like format that incorporates inline-only Markdown styles
and a custom autolink format.

You can get started by [opening this repository in a GitHub Codespace], or by
[opening this repository in a VS Code devcontainer]. After that, you'll be
greeted by a fresh workspace ready for your edits. You can run `tools/dev.sh` or
the `dev` VS Code Task to start the preview HTTP server.

<!-- prettier-ignore-start -->
[quantitative awesomeness]: https://jcbhmr.github.io/spec-template/
[bikeshed]: https://tabatkins.github.io/bikeshed/
[opening this repository in a GitHub Codespace]: https://docs.github.com/en/codespaces/getting-started/quickstart
[opening this repository in a VS Code devcontainer]: https://code.visualstudio.com/docs/devcontainers/tutorial
<!-- prettier-ignore-end -->
