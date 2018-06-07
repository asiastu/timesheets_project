import swal from 'sweetalert';

function bindSweetAlertButtonReject() {
  const swalButtons = document.querySelectorAll('.reject-button');

  swalButtons.forEach((btn) => {
    btn.addEventListener('click', () => {
      swal({
        title: "Done.",
        text: "Timesheet rejected.",
        icon: "error"
      });
    });
  })

}

export { bindSweetAlertButtonReject };
