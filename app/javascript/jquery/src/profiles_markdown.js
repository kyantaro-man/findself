$(function() {
  $(document).on("click", '.js-edit-markdown-button', function() {
    let markdownId = $(this).data('target');
    let markdownLabelArea = $('#js-label-' + markdownId);
    let markdownTextArea = $('#js-textarea-' + markdownId);
    let markdownButton = $('#js-button-' + markdownId);

    markdownLabelArea.hide();
    markdownTextArea.show();
    markdownButton.show();
  })
})

$(function() {
  $(document).on("click", '.markdown-button-cancel', function() {
    let markdownId = $(this).data('cancel-id');
    let markdownLabelArea = $('#js-label-' + markdownId);
    let markdownTextArea = $('#js-textarea-' + markdownId);
    let markdownButton = $('#js-button-' + markdownId);

    markdownLabelArea.show();
    markdownTextArea.hide();
    markdownButton.hide();
  })
})