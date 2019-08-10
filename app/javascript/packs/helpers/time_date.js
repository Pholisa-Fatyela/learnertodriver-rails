import { formatDistanceToNow, parseISO } from 'date-fns'

document.addEventListener("turbolinks:load", function() {

  let dateContainer = document.getElementById("time_in_words")

  if (dateContainer) {
  let dateText = dateContainer.dataset.date

  let formatedDate = formatDistanceToNow(
    new Date(parseISO(dateText, 1)),
    {addSuffix: true}
  )
  // render
  dateContainer.innerHTML = formatedDate;
  }
})
;