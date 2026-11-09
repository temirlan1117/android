import '../models/post_model.dart';
import '../models/comment_model.dart';

List<PostModel> createPosts() {
  return [
    PostModel(
      imageAsset: 'assets/posts/post1.jpg',
      description: 'Фото по дороге',
      likeCount: 1,
      comments: [
        CommentModel(author: 'Айбек', text: 'Красивый вид из машины!'),
      ],
    ),
    PostModel(
      imageAsset: 'assets/posts/post2.jpg',
      description: 'Вечер с друзьями',
      likeCount: 4,
      comments: [CommentModel(author: 'Алина', text: 'Хорошо отдохнули!')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post3.jpg',
      description: 'Первый снег в этом году',
      likeCount: 7,
      comments: [CommentModel(author: 'Бекзат', text: 'У нас тоже снег')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post4.jpg',
      description: 'Немного погуляли в парке',
      likeCount: 10,
      comments: [
        CommentModel(author: 'Амина', text: 'Отличное место для прогулки'),
      ],
    ),
    PostModel(
      imageAsset: 'assets/posts/post5.jpg',
      description: 'Обычный день в универе',
      likeCount: 13,
      comments: [CommentModel(author: 'Данияр', text: 'Увидимся на парах')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post6.jpg',
      description: 'Красивый закат сегодня',
      likeCount: 16,
      comments: [CommentModel(author: 'Асель', text: 'Красивый закат!')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post7.jpg',
      description: 'Кофе перед учебой',
      likeCount: 19,
      comments: [CommentModel(author: 'Нурбек', text: 'Приятного утра!')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post8.jpg',
      description: 'День на Иссык-Куле',
      likeCount: 22,
      comments: [CommentModel(author: 'Алия', text: 'Вода очень красивая')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post9.jpg',
      description: 'Сегодня выбрались в горы',
      likeCount: 25,
      comments: [CommentModel(author: 'Тимур', text: 'Тоже хочу в горы!')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post10.jpg',
      description: 'Прогулка по городу',
      likeCount: 28,
      comments: [CommentModel(author: 'Мээрим', text: 'Красивый город!')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post11.jpg',
      description: 'Мой завтрак',
      likeCount: 31,
      comments: [CommentModel(author: 'Азамат', text: 'Приятного аппетита!')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post12.jpg',
      description: 'Начал читать новую книгу',
      likeCount: 34,
      comments: [CommentModel(author: 'Диана', text: 'Расскажешь про книгу?')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post13.jpg',
      description: 'Смотрю футбол',
      likeCount: 37,
      comments: [
        CommentModel(author: 'Руслан', text: 'В следующий раз позови'),
      ],
    ),
    PostModel(
      imageAsset: 'assets/posts/post14.jpg',
      description: 'Вид из моего окна',
      likeCount: 40,
      comments: [CommentModel(author: 'Элина', text: 'Хороший вид!')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post15.jpg',
      description: 'Дошли до водопада',
      likeCount: 43,
      comments: [CommentModel(author: 'Адилет', text: 'Далеко идти?')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post16.jpg',
      description: 'Зашли перекусить',
      likeCount: 46,
      comments: [CommentModel(author: 'Сезим', text: 'Как называется кафе?')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post17.jpg',
      description: 'Город ночью',
      likeCount: 49,
      comments: [CommentModel(author: 'Эрмек', text: 'Вечером красиво')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post18.jpg',
      description: 'Прокатился на велосипеде',
      likeCount: 52,
      comments: [CommentModel(author: 'Айдана', text: 'Отличный маршрут!')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post19.jpg',
      description: 'Нашли красивое место',
      likeCount: 55,
      comments: [CommentModel(author: 'Кубат', text: 'Красивое место!')],
    ),
    PostModel(
      imageAsset: 'assets/posts/post20.jpg',
      description: 'Просто хорошее фото на память',
      likeCount: 58,
      comments: [
        CommentModel(author: 'Нурай', text: 'Милый пёс!'),
      ],
    ),
  ];
}

