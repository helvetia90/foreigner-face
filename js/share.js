function kakaoShare(){
    Kakao.Share.sendDefault({
    objectType: 'feed',
    content: {
      title: 'Sam Claflin',
      description: '99%',
      imageUrl:
        './image/man/Taron Egerton.jpg',
      link: {
        mobileWebUrl: 'https://developers.kakao.com',
        androidExecutionParams: 'test',
      },
    },
    buttons: [
      {
        title: '나랑 닮은 외국 연예인은?',
        link: {
          mobileWebUrl: 'https://developers.kakao.com',
        },
      },
    ]
  });
}