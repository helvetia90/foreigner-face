const url = 'https://resem-foreign.netlify.app';

function kakaoShare(src){
    src.substr(1);
    Kakao.Share.sendDefault({
    objectType: 'feed',
    content: {
      title: 'Sam Claflin',
      description: '99%',
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