/*const theme = localStorage.getItem("theme");

window.onload = () => {
  const theme = localStorage.getItem("theme");
  if (!theme) return setTheme("light");
  return setTheme(theme);
};

const setTheme = color => {
  setTheme(theme ? (theme === "dark" ? "dark" : "light") : "light");

  if (color === "dark") {
    localStorage.setItem("theme", "dark");
    document.documentElement.classList.add("uk-light");
    document.documentElement.classList.add("uk-background-secondary");
  } else {
    localStorage.setItem("theme", "light");
    document.documentElement.classList.remove("uk-light");
    document.documentElement.classList.remove("uk-background-secondary");
  }
};

setTheme(theme ? (theme === "dark" ? "dark" : "light") : "light");
*/