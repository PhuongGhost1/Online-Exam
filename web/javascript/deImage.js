function deleteImage() {
    console.log('Deleting image...');
    const preview = document.getElementById('imagePreview');
    const deleteButton = document.getElementById('deleteImage');

    while (preview.firstChild) {
        preview.removeChild(preview.firstChild);
    }

    deleteButton.style.display = 'none';

    document.getElementById('image').value = '';
}
