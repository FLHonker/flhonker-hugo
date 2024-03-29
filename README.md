# Frank blog's source code

[Frank Liu's blog](https://flhonker.github.io) source code

Proudly powered by [Hugo](https://github.com/gohugoio/hugo) ❤️, Theme by [Beautiful Jekyll](http://deanattali.com/beautiful-jekyll/) adapted to [Beautiful Hugo](https://github.com/halogenica/beautifulhugo)

## Usage

Let me show you how to add and debug a new post and push it to Github pages and building a new searching index.

### 1. Add a new post

Use this command to create a new post:

```bash
hugo add posts/new.md
```

After the new post created, it is located at `./content/posts/new.md`.

### 2. Post head matters

Classic example:

```yaml
date: "2017-06-01T20:18:57+08:00"
draft: false
title: "blockchain-based cloud service platform"
subtitle: "apply blockchain to cloud service."
categories: "cloud"
tags: ["Linux","cloud","blockchain"]
description: "对文章的简要描述 SEO used for description"
bigimg: [{src: "https://res.cloudinary.com/flhonker/image/upload/flhonker-hugo/share_img/post-bg-linux_5.jpg", desc: "Cloud Computing"}]
nocomment: true
postmeta: false
```

**bigimg**：an array, you can specify multiple images in map lists.

**postmeta**：whether show the post meta data below a post title/subtitle

**nocomment**: whether show the comment box

### 3. Preview and debug

Execute this command the build a preview:

```bash
hugo server
```

Visit <http://localhost:1313> for the website preview.

**4. Update algolia index**

Execute this command to build a new algolia index at the project's base path:

```Bash
hugo-alogolia
grep -v '"content":' algolia.json>flhonker-hugo.json
rm -f algolia.json
```

As the  new post created there should be a new record added to this file `public/flhonker-hugo.json`.

## Acknowledgements

- [AddThis](https://www.addthis.com/): social share botton
- [Algolia](https://www.algolia.com/): search platform
- [autocomplete.js](https://github.com/algolia/autocomplete.js): search frontend
- [Baidu analysis](http://tongji.baidu.com/): website analysis
- [Beautiful Hugo](https://github.com/halogenica/beautifulhugo): theme
- [Bitlinks](https://bitly.com/) Short links
- [Cloudfare](https://www.cloudflare.com/): DNS and https
- [Cloudinary](https://www.cloudinary.com/): CDN and static images hosting
- [Github Pages](https://pages.github.com/): website hosting
- [Gitment](https://github.com/imsun/gitment): comments plugin
- [Hugo](https://gohugo.io/): static website builder
- [Hugo-algolia](https://www.npmjs.com/package/hugo-algolia): index json builder
- [Namecheap](https://namecheap.com/): domain name registry
- [Prism](http://prism.com/): code highlight