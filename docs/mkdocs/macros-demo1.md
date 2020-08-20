# Macros
The documentation is here:

[macros](https://mkdocs-macros-plugin.readthedocs.io/en/latest/)

## Variables

The price of the product is {{ price }}.

See [more information on the website]({{ company.website }}).

See <a href="{{ company.website }}">more information on the website</a>.

## Input fields with macro

{% macro input(name, value='', type='text', size=20) -%}
    <input type="{{ type }}" name="{{ name }}" value="{{
        value|e }}" size="{{ size }}">
{%- endmacro %}

<p>Username: {{ input('username') }}</p>
<p>Password: {{ input('password', type='password') }}</p>


## Git information

{{ git.short_commit}} ({{ git.date}}) by {{ git.author}}

{{ context(git)| pretty }}

## Include

{% include 'docs/mkdocs/snippet.md' %}

The attempt to include different file

```yaml
{% include 'mkdocs.yml' %}
```

## Footnotes

This is example:

```
Lorem ipsum[^1] dolor sit amet, consectetur adipiscing elit.[^2]
```

Lorem ipsum[^1] dolor sit amet, consectetur adipiscing elit.[^2].

The content is:

```
[^1]: Lorem ipsum dolor sit amet, consectetur adipiscing elit.
```

[^1]: Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Or it can be on multiple lines:

```
[^2]:
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

[^2]:
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

## Admonition

See [docs](https://squidfunk.github.io/mkdocs-material/extensions/admonition/)

## Notes etc

```
!!! note
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

!!! note
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.


Changing title

```
!!! note "Phasellus posuere in sem ut cursus"
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

!!! note "Phasellus posuere in sem ut cursus"
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

No title:

```
!!! note ""
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
```

!!! note ""
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.


## Other types

* note, seealso
* abstract, summary, tldr
* info, todo
* tip, hint, important
* success, check, done
* question, help, faq
* warning, caution, attention
* failure, fail, missing
* danger, error
* bug
* example
* quote


### Demo

!!! abstract
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! info
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! tip
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! success
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! question
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! warning
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! failure
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! danger
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! bug
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! example
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! quote
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

## PyMDown

Extension to Material [see this](https://squidfunk.github.io/mkdocs-material/extensions/pymdown/)

### Arithmatex

Both:

```
...
markdown_extensions:
  - pymdownx.arithmatex
---
extra_javascript:
  - https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=TeX-MML-AM_CHTML
```

Allows [MathJax](https://www.mathjax.org/).

Demo [is here](https://math.meta.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference) [und auch hier](https://www.mathelounge.de/509545/mathjax-latex-basic-tutorial-und-referenz-deutsch)

Inline rendering - type
$\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}$
to do inline

```
$\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}$
```

or type
$$ \sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6} $$
to show

```
$$\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}$$
```

#### More

```
$$ \sqrt – \sqrt{x^3} \sqrt[3]{\frac xy} \sqrt[3]{\frac xy} $$
```

$$ \sqrt – \sqrt{x^3} \sqrt[3]{\frac xy} \sqrt[3]{\frac xy} $$

```
{n+1 \choose 2k}
\binom{n+1}{2k}
```
$$ {n+1 \choose 2k}
\binom{n+1}{2k} $$

### Magic link

Allows to use http links directly. Read more https://squidfunk.github.io/mkdocs-material/extensions/pymdown/

### Mark

Adds higlight using two equal signs

```
In this sentence ==this will be highlighted== as well as ==this==.
```

In this sentence ==this will be highlighted== as well as ==this==.

### Icons

Add

```
- pymdownx.emoji:
      emoji_index: !!python/name:materialx.emoji.twemoji
      emoji_generator: !!python/name:materialx.emoji.to_svg
```

and then use 

```
* :material-account-circle: – we can use Material Design icons
* :fontawesome-regular-laugh-wink: – we can also use FontAwesome icons
* :octicons-octoface: – that's not all, we can also use GitHub's Octicons
```

* :material-account-circle: – we can use Material Design icons
* :fontawesome-regular-laugh-wink: – we can also use FontAwesome icons
* :octicons-octoface: – that's not all, we can also use GitHub's Octicons

See also:

* https://material.io/resources/icons/?icon=dashboard&style=baseline
* https://www.w3schools.com/icons/fontawesome_icons_brand.asp
* https://material.io/resources/icons/?style=baseline
* https://primer.style/octicons/

Examples:

* :fontawesome-regular-amazon: - Amazon
* :material-bookmark: - Material bookmark
* :octicons-settings: - Octicons settings



### Tasklist

```
* [x] Lorem ipsum dolor sit amet, consectetur adipiscing elit
* [x] Nulla lobortis egestas semper
* [x] Curabitur elit nibh, euismod et ullamcorper at, iaculis feugiat est
* [ ] Vestibulum convallis sit amet nisi a tincidunt
    * [x] In hac habitasse platea dictumst
    * [x] In scelerisque nibh non dolor mollis congue sed et metus
    * [x] Sed egestas felis quis elit dapibus, ac aliquet turpis mattis
    * [ ] Praesent sed risus massa
* [ ] Aenean pretium efficitur erat, donec pharetra, ligula non scelerisque
* [ ] Nulla vel eros venenatis, imperdiet enim id, faucibus nisi
```

* [x] Lorem ipsum dolor sit amet, consectetur adipiscing elit
* [x] Nulla lobortis egestas semper
* [x] Curabitur elit nibh, euismod et ullamcorper at, iaculis feugiat est
* [ ] Vestibulum convallis sit amet nisi a tincidunt
    * [x] In hac habitasse platea dictumst
    * [x] In scelerisque nibh non dolor mollis congue sed et metus
    * [x] Sed egestas felis quis elit dapibus, ac aliquet turpis mattis
    * [ ] Praesent sed risus massa
* [ ] Aenean pretium efficitur erat, donec pharetra, ligula non scelerisque
* [ ] Nulla vel eros venenatis, imperdiet enim id, faucibus nisi

### Tilde

[Tilde](https://facelessuser.github.io/pymdown-extensions/extensions/tilde/) provides an easy way to ~~strike through cross out text~~. The portion of text that should be erased must be enclosed in two tildes `~~...~~` and the extension will take care of the rest.

```
[Tilde](https://facelessuser.github.io/pymdown-extensions/extensions/tilde/) 
provides an easy way to ~~strike through cross out text~~. 
The portion of text that should be erased must be enclosed in two tildes `~~...~~` and the extension will take care of the rest.
```

### Tabbed

Tabbed
Tabbed adds support for creating tabbed groups of Markdown content.

```
=== "Fruit List"
    - :apple: Apple
    - :banana: Banana
    - :kiwi: Kiwi

=== "Fruit Table"
    Fruit           | Color
    --------------- | -----
    :apple:  Apple  | Red
    :banana: Banana | Yellow
    :kiwi:   Kiwi   | Green
```

=== "Fruit List"
    - :apple: Apple
    - :banana: Banana
    - :kiwi: Kiwi

=== "Fruit Table"
    Fruit           | Color
    --------------- | -----
    :apple:  Apple  | Red
    :banana: Banana | Yellow
    :kiwi:   Kiwi   | Green

### Superfences

```
~~~~{.python hl_lines="1 3"}
# This line is emphasized
# This line isn't
# This line is emphasized
~~~~
```

~~~~{.python hl_lines="1 3"}
# This line is emphasized
# This line isn't
# This line is emphasized
~~~~