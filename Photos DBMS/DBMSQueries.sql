-- Retrieve album and photo grapher detailsfrom album table and photographers table
Select album.albumID,album.title,album.description,photographers_t.Photographer_Name,photographers_t.Photographer_Number from album join photographers_t on album.photoID = photographers_t.photoid;

show tables;
select * from client_T;

-- Left join on photos and print type - 
select photoprint.photoid, printtype from photoprint left join photo on photoprint.photoid = photo.photoid;

-- Retrieve Photographer Name, Type and type of Photography from photographers_t and type table
select photographers_t.PhotoGrapher_Name,type_t.type,photographers_t.Type_of_photography from type_t join photographers_t on type_t.photoid = photographers_t.photoid;

-- Retrieve the names of all photographers who have taken a photo for a Mike Hanningan:
SELECT p.Photographer_Name
FROM Photographers_T p
JOIN photo ph ON p.photoID = ph.photoID
JOIN client_T c ON ph.photoID = c.photoID
WHERE c.Clientname = 'Mike Hannigan';
-- Retrieve the name of all photographers who have not taken a photo for a Joey Tribiani:
SELECT p.Photographer_Name
FROM Photographers_T p
LEFT JOIN photo ph ON p.photoID = ph.photoID
AND ph.photoID = (SELECT clientID FROM client_T WHERE ClientName = 'Joey Tribiani')
WHERE ph.PhotoID IS NULL;


Update comment
set comment = 'Too low Contrast' where commentID = 118;

Update comment
set comment = 'Good Resolved' where commentID = 118;

-- delete from tag_photo where tagID = 222;

create view latestPhotos  AS select * from photo
Where UploadDate > DATE_SUB(NOW(), INTERVAL 1 YEAR) order by uploadDate desc;

select * from latestPhotos;
select * from comments_audit;
select * from comments_audit;

Select getLocationFromPhoto(2) as City;
SELECT calculate_cost('wedding', 'hard', 20);

SELECT getAddressByName('Rachel');


/* Left join on photos and print type */
select photoprint.photoid, printtype from photoprint left join photo on photoprint.photoid = photo.photoid;


-- Retrieve the names of all photographers who have taken a photo for a Mike Hanningan:
SELECT p.Photographer_Name
FROM Photographers_T p
JOIN photo ph ON p.photoID = ph.photoID
JOIN client_T c ON ph.photoID = c.photoID
WHERE c.Clientname = 'Mike Hannigan';
-- Retrieve the name of all photographers who have not taken a photo for a Joey Tribiani:
SELECT p.Photographer_Name
FROM Photographers_T p
LEFT JOIN photo ph ON p.photoID = ph.photoID
AND ph.photoID = (SELECT clientID FROM client_T WHERE ClientName = 'Joey Tribiani')
WHERE ph.PhotoID IS NULL;


SELECT count_photographers_in_type('Fashion');

Select * from latestphotos;

/*
 Dheeraj Reddy Chilukuri
The below code retrieves all the Updated and New Comments along with their updated time
*/
select comment.commentId, comment.commentDate, comment.Comment, 
comments_audit.oldComment, comments_audit.newComment, comments_audit.timestamp as updatedTime, comments_audit.action from comment 
inner join comments_audit on comment.commentID = comments_audit.commentID order by updatedTime Desc;

/*
 Dheeraj Reddy Chilukuri
The below code retrieves location, client name and number Of Photos from photo, location and clinet table
Usses join to join location table and photo table on location ID and joins client table and photo table with PhotoID
*/
SELECT Location.City, client_t.clientName, COUNT(*) AS NumberOfPhotos
FROM Photo JOIN Location ON Photo.locationID = Location.LocationID 
JOIN client_t ON Photo.photoID = client_t.photoID
GROUP BY Location.City, client_t.clientName
ORDER BY Location.City ASC, NumberOfPhotos DESC;
