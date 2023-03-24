
const pForm = document.getElementById('programare-form');

pForm.addEventListener('submit', function(event) {
  event.preventDefault();
  const numePacient = document.getElementById('nume-pacient');
  const prenumePacient = document.getElementById('prenume-pacient');
  const adresaPacient = document.getElementById('adresa-pacient');
  const telefonPacient = document.getElementById('telefon-pacient');
  const emailPacient = document.getElementById('email-pacient');
  const dataProgramare = document.getElementById('data-programare');
  const oraProgramare = document.getElementById('ora-programare');
  const doctor = document.getElementById('doctor');
  const specializare = document.getElementById('spec');


  if (numePacient.value === '') {
    alert('Vă rugăm să introduceți numele!');
    return false;
  }

  if (numePacient.value.length > 250) {
        alert('Numele trebuie să conțină maxim 250 caractere!');
        return false;
  }

  if (prenumePacient.value === '') {
      alert('Vă rugăm să introduceți prenumele!');
      return false;
    }

  if (prenumePacient.value.length > 250) {
      alert('Prenumele trebuie să conțină maxim 250 caractere!');
      return false;
  }

  if (adresaPacient.value === '') {
      alert('Vă rugăm să introduceți adresa!');
      return false;
  }

  if (emailPacient.value === '') {
      alert('Vă rugăm să introduceți email-ul!');
      return false;
    }

  if (telefonPacient.value === '') {
     alert('Vă rugăm să introduceți telefonul!');
     return false;
  }

  if (dataProgramare.value === '') {
     alert('Vă rugăm să alegeți o dată pentru programare!');
     return false;
  }

  if (oraProgramare.value === '') {
        alert('Vă rugăm să alegeți ora pentru programare.');
        return false;
  }

  if (doctor.value === '') {
    alert('Vă rugăm să alegeți un medic.');
    return false;
  }

  if (specializare.value === '') {
     alert('Vă rugăm să alegeți specializarea!');
     return false;
  }

  pForm.submit();
});