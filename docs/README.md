## Documentation overview

Welcome to the documentation section, here you will find all the necessary documentation.

### 📚 Table of contents

#### 📥 Installation

- [Direct installation](/docs/DIRECT_INSTALLATION.md)
- [Docker container](/docs/DOCKER_INSTALLATION.md)

#### 📥 Configuration

- [Script Purge Cloudflare Cache](/docs/Purge-Cloudflare-Cache.md)

#### 🐛 Debugging help & tips

- [Debugging tips](/docs/DEBUG_TIPS.md)

## 👨‍💻 Development priorities

Priorities from highest to lowest:

* 🔼 Fixing core functionality bugs not solvable with workarounds
* 🔵 New core functionality unlocking other opportunities (e.g.: plugins) 
* 🔵 Refactoring enabling faster implementation of future functionality 
* 🔽 (low) UI functionality & improvements (PRs welcome 😉)

Design philosophy: Focus on core functionality and leverage existing apps and tools to make Cloudflare-CLI integrate into other workflows. 

Examples: 

    1. Supporting apprise makes more sense than implementing multiple individual notification gateways
    2. Implementing regular expression support across settings for validation makes more sense than validating one setting with a specific expression. 

UI-specific requests are a low priority as the framework picked by the original developer is not very extensible (and afaik doesn't support components) and has limited mobile support. Also, I argue the value proposition is smaller than working on something else.

Feel free to submit PRs if interested. try to **keep the PRs small/on-topic** so they are easier to review and approve. 

That being said, I'd reconsider if more people and or recurring sponsors file a request 😉.

## 🙏 Feature requests

Please be as detailed as possible with **workarounds** you considered and why a native feature is the better way. This gives me better context and will make it more likely to be implemented. Ideally, a feature request should be in the format "I want to be able to do XYZ so that ZYX. I considered these approaches XYZ".

## ➕ Pull requests (PRs)

If you submit a PR please:

1. Check that your changes are backward compatible with existing installations and with a blank setup. 
2. Existing features should always be preserved. 
3. Keep the PR small, on-topic and don't change code that is not necessary for the PR to work
4. New features code should ideally be re-usable for different purposes, not be for a very narrow use-case.
5. New functionality should ideally be implemented via the Plugins system, if possible.

## 🐛 Submitting an issue or bug

Before submitting a new issue please spend a couple of minutes on research:

* Check [🛑 Common issues](/docs/dockerfiles#-common-issues) 
* Check [💡 Closed issues](https://github.com/cvc90/Cloudflare-CLI/issues?q=is%3Aissue+is%3Aclosed) if a similar issue was solved in the past.
* When submitting an issue ❗[enable debug](/docs/DEBUG_TIPS.md)❗

⚠ Please follow the pre-defined issue template to resolve your issue faster.
