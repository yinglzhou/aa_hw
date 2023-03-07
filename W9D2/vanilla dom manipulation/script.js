document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!

  document.addEventListener("DOMContentLoaded", () => {
    const formSubmit = document.getElementById("fav-place-form");
    formSubmit.addEventListener('submit', evenet => {event.preventDefault();})

    
  })



  // adding new photos

  // --- your code here!



});
