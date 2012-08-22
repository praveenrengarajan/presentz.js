class ImgSlide

  constructor: (@presentz, @slideContainer) ->
    @preloadedSlides = []

  changeSlide: (slide) ->
    if jQuery("#{@slideContainer} img").length is 0
      $slideContainer = jQuery(@slideContainer)
      $slideContainer.empty()
      $slideContainer.append("<table width=\"100%\" height=\"100%\"><tr><td align=\"center\" valign=\"middle\"><img height=\"100%\" src=\"#{slide.url}\"></td></tr></table>")
    else
      jQuery("#{@slideContainer} img").attr "src", slide.url
    return

  preload: (slide) ->
    return if (slide.url in @preloadedSlides)
    image = new Image()
    image.src = slide.url
    return