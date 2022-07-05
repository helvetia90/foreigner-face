const url = 'https://resem-foreign.netlify.app';

function kakaoShare(img,name,score){
    var src = img.substring(1);
    console.log(src + name + score);
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