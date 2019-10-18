const initAnchors = () => {
    if (window.anchors === undefined) {
      setTimeout(initAnchors, 250)
      return
    }
    anchors.add("main h1, main h2, main h3, main h4");
    
    document.querySelectorAll('.anchorjs-link')
      .forEach(it => it.dataset['turbolinks'] = false);
}
initFunction(initAnchors);