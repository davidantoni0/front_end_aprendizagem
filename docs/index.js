document.getElementById("whatsapp-link").href =
    /Android|iPhone|iPad|iPod/i.test(navigator.userAgent)
      ? "https://api.whatsapp.com/send?phone=5524992125959"
      : "https://web.whatsapp.com/send?phone=5524992125959";