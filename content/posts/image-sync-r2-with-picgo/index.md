---
title: "Automating Image Sync to Cloudflare R2 with PicGo"
date: 2025-12-23
draft: false
description: "Automating the sync of images to Cloudflare R2 using PicGo for seamless content management."
summary: "Setting up PicGo to automatically sync images to Cloudflare R2."
tags: ["Cloudflare R2", "PicGo", "logseq"]
categories: ["Productivity"]
showReadingTime: true
---

# Why?

I am a fan of [logseq](https://logseq.com) (glad if you are too), I love its local-first philosophy. Data lives on my machine, safe and private.

However, the biggest friction is when pasting images or videos. By default, logseq saves media files as-is: pasting url, it shows url; pasting local file, it saves local file path.

Issues:

- Local image path is not cloud-wise friendly. It breaks if I try to publish to internet.
- I should not paste images directly into the Git repo. Bloats the repo size.

Desire:

- There should be a better way to upload images in a single action. Something like "paste image, upload to cloud, get url, insert url".

# Solution

And my solution for now is to upload images to Cloudflare R2 the moment they are pasted, via [PicGo](https://github.com/Molunerfinn/PicGo).

{{< github repo="https://github.com/Molunerfinn/PicGo" >}}

The desired workflow is:

1. Have the image inside clipboard.
2. Automatically call PicGo by CMD + Shift + P to upload the image to Cloudflare R2.
3. PicGo uploads the image, returns the URL.
4. I have the URL and paste into logseq (or other sites).

![](https://media.secondbrain.lelouvincx.com/2025/12/3021ca046013741e6538f8a5f1988527.png)

Demo:
![](https://media.secondbrain.lelouvincx.com/2025/12/80e07802cf551d2952f4787ffec5c0a5.mp4)

## Prereequisites

## Implementation

# Result

This setup keeps my logseq repository lightweight (text only) and makes sharing notes significantly easier since the assets are already online.

I hope this tip improves your note-taking workflow. Happy writing!
