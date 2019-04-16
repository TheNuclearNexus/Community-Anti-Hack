function themeChange() {
  document.documentElement.classList.add("transition");
  window.setTimeout(() => {
    document.documentElement.classList.remove("transition");
  }, 250);
  document.documentElement.classList.toggle("uk-light");
  document.documentElement.classList.toggle("uk-background-secondary");
}
