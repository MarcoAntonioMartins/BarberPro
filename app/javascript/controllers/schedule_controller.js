import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "dateInput", "timeSelect", "availableTimes" ]

  connect() {
    this.filterAvailableTimes()
  }

  filterAvailableTimes() {
    const selectedDate = this.dateInputTarget.value
    
    if (!selectedDate) return

    const dayOfWeek = new Date(selectedDate).getDay()
    
    // Exemplo de lógica de filtro (você pode personalizar)
    const availableTimesSelect = this.timeSelectTarget
    Array.from(availableTimesSelect.options).forEach(option => {
      if (option.value) {
        option.style.display = dayOfWeek === 0 ? 'none' : 'block'
      }
    })
  }
}
