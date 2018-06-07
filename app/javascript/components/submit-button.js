import swal from 'sweetalert';

function bindSweetAlertButtonSubmit() {
  const swalButton = document.getElementById('submit-button');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: "Done!",
        text: "Timesheet submitted.",
        icon: "success"
      });
    });
  }
}

export { bindSweetAlertButtonSubmit };
