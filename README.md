# citRon: Jacquemus-themed colour palettes for Sarah's MPhil thesis
Jacquemus is a French fashion label headed by Simon Porte Jacquemus that has achieved cult status over the 
past couple of years thanks to its whimsical, casual styles and eyebrow-raising accessories
(the most famous being a tiny bag incapable of holding much more than a single key).
I love how the label uses bold colours, and found inspiration in Jacquemus' Spring '19 and '20
collections when coming up with a colour palette for my thesis plots. 

Citrus fruits often feature as props in Jacquemus editorials, and Jacquemus himself owns a cafe
called "Citron", hence the package name `citRon` ("lemon" in English).

`citRon` includes a qualitative palette, a diverging palette, and various gradient palettes.
Particular shades have been chosen because I have been lead to believe that I have chosen
shades and combinations that are colourblind-friendly, but I am more than happy to entertain
any suggestions or tweaks that could be made.

These palettes have been constructed with a specific use in mind, especially `citron_grad_blue8`,
so do keep in mind that these will not always be useful or attractive for your circumstances.

This package, including the format of this vignette, has been copied-and-edited from 
the `ochRe` package by Holly Kirk et. al.
```r
# ochRe can be downloaded here:
devtools::install_github("ropenscilabs/ochRe")
```  

```r
# Load the citRon vignette
vignette("citRon")
```

## Installation

To install `citRon` from GitHub:

```r
# A reminder that you need to install the 'devtools' package first.
devtools::install_github("beeysian/citRon")
```

To load the library:
```{r setup}
library(citRon)
```

## The Palettes

```{r see_palettes, fig.height = 8}
pal_names <- names(citron_palettes)
par(mfrow = c(length(citron_palettes)/2, 2), lheight = 2, mar = rep(1, 4), adj = 0)
for (i in 1:length(citron_palettes)){
    viz_palette(citron_palettes[[i]], pal_names[i])
}
```


## Example

The default palette is the qualitative palette.

```{r}
library(citRon)
library(ggplot2)
ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
  scale_fill_citron()
```

The order that colours appear can be reversed by setting `reverse = FALSE`. Below is the qualitative palette reversed:

```{r}
library(citRon)
library(ggplot2)
ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
  scale_fill_citron(reverse = FALSE)
```

You can change the colour palette used within `scale_fill_citron()`. Below is the diverging palette.

```{r}
library(citRon)
library(ggplot2)
ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
  scale_fill_citron(palette = "citron_div")
```

Here's the purple-yellow gradient palette using `scale_colour_citron()` instead. Isn't it pretty?
```{r}
library(citRon)
library(ggplot2)
ggplot(diamonds) + geom_point(aes(x = carat, y = price, color = clarity)) +
  scale_colour_citron(palette = "citron_grad")
```


