---
title: "How to Contribute"
description: "Suggest a correction, request a new calculator, or improve a guide — no code or GitHub experience required."
layout: "guide"
category: "Contributing"
weight: 10
meta: true
chapters:
  - id: "overview"
    label: "What's Useful"
  - id: "open-issue"
    label: "Opening an Issue"
  - id: "contribute-content"
    label: "Contributing Content"
  - id: "what-next"
    label: "What Happens Next"
---

<div id="overview" class="story-chapter-label">[ What's Useful ]</div>

This site is open source, which means anyone can suggest changes, report problems, or contribute new content. You don't need to know how to code. If you can describe what's wrong or what should exist, that's a useful contribution.

The most valuable things to flag:

- **Formula corrections** — if a calculator is using the wrong formula, or producing results that don't match your plant's expectations, say so
- **Reference data gaps or errors** — DO targets, loading benchmarks, pH ranges that don't match your process or permit conditions
- **New calculator requests** — if you're doing math on a napkin every shift that isn't here, it should be
- **Field guide corrections or additions** — operational context, procedures that differ by process type, details that would have helped earlier in your career
- **Anything missing** — if you keep coming back looking for something that isn't here, that's signal

The only thing that isn't useful: vague dissatisfaction without specifics. "This doesn't work" is hard to act on. "The SVI calculator gives a different result than the Van Kleeck method my plant uses for X reason" is actionable.

<div id="open-issue" class="story-chapter-label">[ Opening an Issue ]</div>

GitHub is the platform this project lives on. An "issue" is just a structured way to leave feedback — think of it as a support ticket that's visible to anyone and tracked over time.

**What you need:** A free GitHub account. You can create one at [github.com](https://github.com) without providing any personal information beyond an email address.

**Step by step:**

1. Go to the project: [github.com/cbellmyer/wwtptools](https://github.com/cbellmyer/wwtptools)
2. Click the **Issues** tab near the top of the page
3. Click the green **New issue** button on the right
4. Give it a clear title — one sentence describing the problem or request
5. In the description box, explain the details: what you expected, what you got, what should change
6. Click **Submit new issue**

That's it. You'll get email notifications if there's a response or update.

**You don't need to use any specific format.** Plain text is fine. If you're reporting a formula error, include the formula you'd expect. If you're requesting a calculator, include the variables and what the result should be. More detail is better than less.

<div id="contribute-content" class="story-chapter-label">[ Contributing Content ]</div>

If you want to go further than filing an issue — writing a section of a field guide, adding reference data, or submitting a new calculator — there are a few ways to do it.

**The no-code path:** Write your content in plain text (or a Word doc, or a Google Doc — format doesn't matter) and attach it to a GitHub issue. Describe what section it belongs to. If it's a formula, include the formula, the variables, and the units. The maintainer will integrate it and credit you.

**The code path (for contributors familiar with Git):**

1. Fork the repository on GitHub
2. Clone your fork locally
3. Navigate to `content/content/` for guide text or `content/assets/js/` for calculator logic
4. Make your changes — guides use Markdown, calculators are vanilla JavaScript
5. Submit a pull request targeting the `main` branch

The guide content format is standard Markdown with Hugo front matter. If you've written any Markdown before, the pattern is easy to follow by looking at the existing files.

<div id="what-next" class="story-chapter-label">[ What Happens Next ]</div>

After you submit, everything gets read — usually within a few days, sometimes faster. The response time depends on shift schedule and what else is in motion, but nothing sits ignored.

Small corrections (a reference value, a formula typo, a broken link) typically go live quickly. Larger additions — new calculators, full guide sections — usually involve a reply with some clarifying questions before anything is merged.

The project is maintained by one person alongside a full-time plant shift. It's not a company with a ticket queue. It's an operator who checks GitHub when the process isn't demanding attention.

If you've been in wastewater long enough to know what's missing from this site, you have something worth contributing.
