// history.php用の処理　------------------------------------------------
// 20250331　加藤　修正
// 依頼入力：確認画面表示
$('#openModalButton').on('click', function () {
    var emerg = $('input[name="emerg"]:checked').val();
    var consultationText = $('#consultationText').val();
    if ($('#consultationImage')[0].files[0]) {
        var consultationImage = $('#consultationImage')[0].files[0];
    }

    if (emerg && consultationText) {

        // フィールドから値を取得
        if (emerg == 1) {
            $('#modalEmerg').show();
            $('#modalEmerg').text('緊急');
            add_class('modalEmerg');
        } else {
            // 以前の緊急表示を削除
            $('#modalEmerg').removeClass("fa-solid", "fa-triangle-exclamation", "emerg-icon");
            $('#modalEmerg').text('');
            $('#modalEmerg').hide();
        }

        $('#modalConsultationText').text(html_escape(consultationText));
        if (!consultationImage) {
            $('#hide_imagetext').hide();
        }

        var reader = new FileReader();
        // 画像のプレビューを表示する処理
        if (consultationImage) {
            reader.onload = function (e) {
                var img = new Image();
                img.src = e.target.result;
                img.onload = function () {
                    var canvas = document.createElement('canvas');
                    var ctx = canvas.getContext('2d');
                    // サイズ指定
                    var maxWidth = 500;
                    var maxHeight = 300;
                    var width = img.width;
                    var height = img.height;

                    if (width > maxWidth || height > maxHeight) {
                        if (width / height > maxWidth / maxHeight) {
                            height *= maxWidth / width;
                            width = maxWidth;
                        } else {
                            width *= maxHeight / height;
                            height = maxHeight;
                        }
                    }

                    canvas.width = width;
                    canvas.height = height;
                    ctx.drawImage(img, 0, 0, width, height);
                    $('#modalImagePreview').attr('src', canvas.toDataURL()).show();
                };
            };
            reader.readAsDataURL(consultationImage);
        }else{
            $('#modalImagePreview').hide();
        }

        UIkit.modal('#confirmationModal').show();
    } else {
        alert('相談内容を入力してください。');
    }
});

// 依頼入力：「送信」が押された時の処理
$('#submitFormButton').on('click', function () {
    var formData = new FormData();
    $('#response').remove();
    formData.append('emerg', $('input[name="emerg"]:checked').val());
    formData.append('consultationText', $('#consultationText').val());
    if ($('#consultationImage')[0].files[0]) {
        formData.append('consultationImage', $('#consultationImage')[0].files[0]);
    }
    // ローディング画面を表示
    $('#loadingOverlay').show();
    // 取得データをsubmit.phpに送信
    $.ajax({
        url: 'ajax/submit.php',
        type: 'POST',
        data: formData,
        processData: false,
        contentType: false,
        success: function (response) {
            UIkit.modal('#confirmationModal').hide();
            $('#loadingOverlay').hide();
            // サーバーからのレスポンスを取得して表示
            console.log(response.length);
            if (response.length == 19) {
                $('#completionModal .uk-modal-body .uk-modal-title').show();
                $('#completionModal .uk-modal-body .uk-modal-title').append('');
                $('#completionModal .uk-modal-body .uk-modal-title').append('送信完了');
            } else {
                $('#completionModal .uk-modal-body .uk-modal-title').hide();
            }
            $('#completionModal .uk-modal-body .message').append('');
            $('#completionModal .uk-modal-body .message').append(response);
            UIkit.modal('#completionModal').show();
        },
        error: function () {
            alert('データの送信中にエラーが発生しました。');
            // ロード画面を非表示
            $('#loadingOverlay').hide();
        }
    });
});

// 依頼入力：完了モーダル「ホームへ戻る」処理
$('#goHomeButton').on('click', function () {
    window.location.href = '../menu/MENU_control.php'; // ホームページへのリンク
});

// 依頼入力：完了モーダル「再読み込み」処理
$('#goHistoryButton').on('click', function () {
    location.reload();
});

// 内容変更：「送信」をクリックした場合の処理
$(document).on('click', '#submitchangeorder', function (e) {
    e.preventDefault();

    // DBのid
    var que_id = $('#que_id').val();

    // 変更内容
    var order = $('#order_change').val();

    $.ajax({
        url: 'ajax/save_answer.php',
        type: 'POST',
        data: {
            que_id: que_id,
            order: order,
            history: 1
        },
        success: function () {


            alert('回答内容を変更しました。');

            // 画面再読み込み
            location.reload();

        },
        error: function (xhr, status, error) {
            console.error('Error: ' + error);
        }
    });
});

