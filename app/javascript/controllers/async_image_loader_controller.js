import { Controller } from "stimulus";

export default class extends Controller {
  connect() {
    this.loadImages();
  }

  loadImages() {
    const imageElements = this.element.querySelectorAll(".async-image");
    imageElements.forEach(this.loadImage);
  }

  loadImage = (imageElement) => {
    // Utilisez le chemin vers le dossier public pour charger les images localement
    const imagePath = imageElement.dataset.src;

    // Récupérez le chemin relatif de l'image à partir du data attribute
    const roomPhoto = imageElement.dataset.roomPhoto;

    // Construisez l'URL complète de l'image
    const imageUrl = `/images/${roomPhoto}`;

    // Mettez à jour la source de l'image
    imageElement.src = imageUrl;
  };
}
