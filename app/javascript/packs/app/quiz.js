document.addEventListener("turbolinks:load", function() {

  let progress = document.getElementById("progress");
  let duration = document.getElementById("duration").textContent;
  let durationStep = document.getElementById("duration").textContent;

  var countdown = setInterval(function() {
      durationStep--;
      let percentValue = Math.round((durationStep/duration)*100)
          progress.style.width = percentValue + "%";
      if (progress <= 0) clearInterval(countdown);
  }, 1000);

 })
;
