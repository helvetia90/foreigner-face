const url = 'https://resem-foreign.netlify.app';

function kakaoShare(img, etc){
    var etc = etc.split('/');
    var name = etc[0];
    var score = etc[1];
    var src = img.substring(1);
    console.log(src + etc);
    Kakao.Share.sendDefault({
    objectType: 'feed',
    content: {
      title: name,
      description: score,
      imageUrl:
        url + src,
      link: {
        mobileWebUrl: 'https://resem-foreign.netlify.app/',
        androidExecutionParams: 'test',
      },
    },
    buttons: [
      {
        title: '나랑 닮은 외국 연예인은?',
        link: {
          mobileWebUrl: 'https://resem-foreign.netlify.app/',
        },
      },
    ]
  });
}