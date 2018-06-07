import swal from 'sweetalert';

function bindSweetAlertButtonAccept() {
  const swalButtons = document.querySelectorAll('.accept-button');
  swalButtons.forEach((btn) => {
    btn.addEventListener('click', () => {
      swal({
        title: "Great!",
        text: "Timesheet accepted.",
        icon: "success"
      });
    });
  })
}

export { bindSweetAlertButtonAccept };
