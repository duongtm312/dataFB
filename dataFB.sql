create database facebook;

create table Account(
accountName varchar(50) primary key,
password varchar(50) not null,
userName varchar(50),
gender varchar(10),
birthDay date,
phone varchar(10)
);
create table Post(
postID int primary key,
content varchar(100),
accountName varchar(50) not null,
newPostID int not null,
foreign key (accountName) references Account(accountName),
foreign key (newPostID) references Post(postID)
);
create table Comment(
commentID int primary key,
contentCM varchar(100),
accountName varchar(50) not null,
postID int not null,
reCommentID int not null,
foreign key (accountName) references Account(accountName),
foreign key (postID) references Post(postID),
foreign key (newCommentID) references Comment(commentID)
);
create table LikePost(
accountName varchar(50) not null,
postID int not null,
foreign key (accountName) references Account(accountName),
foreign key (postID) references Post(postID)
);
create table LikeComment(
accountName varchar(50) not null,
commentID int not null,
foreign key (accountName) references Account(accountName),
foreign key (commentID) references Comment(commentID)
);
create table Img(
imgID int primary key,
postID int not null,
foreign key (postID) references Post(postID)
);
