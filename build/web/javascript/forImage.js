function previewImage(event) {
    const input = event.target;
    const preview = document.getElementById('imagePreview');
    const deleteButton = document.getElementById('deleteImage');

    const files = input.files;

    if (files.length > 0) {
        const file = files[0];
        const reader = new FileReader();

        reader.onload = function (e) {
            const img = document.createElement('img');
            img.src = e.target.result;
            img.style.width = '150px';
            img.style.height = '150px';

            while (preview.firstChild) {
                preview.removeChild(preview.firstChild);
            }

            preview.appendChild(img);

        };

        reader.readAsDataURL(file);
    }
}

