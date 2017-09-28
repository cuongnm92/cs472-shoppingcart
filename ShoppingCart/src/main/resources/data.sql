INSERT INTO category(description, name) VALUES ('Book & Audible', 'Book & Audible');
INSERT INTO category(description, name) VALUES ('Movies, Music & Games', 'Movies, Music & Games');
INSERT INTO category(description, name) VALUES ('Electronics, Computers & Offices', 'Electronics, Computers & Offices');
INSERT INTO category(description, name) VALUES ('Home, Garden & Tools', 'Home, Garden & Tools');
INSERT INTO category(description, name) VALUES ('Beauty & Health', 'Beauty & Health');
INSERT INTO category(description, name) VALUES ('Toy, Kids & Baby', 'Toy, Kids & Baby');
INSERT INTO category(description, name) VALUES ('Clothing, Shoes & Jewelry', 'Clothing, Shoes & Jewelry');
INSERT INTO category(description, name) VALUES ('Handmade', 'Handmade');
INSERT INTO category(description, name) VALUES ('Sports & Outdoors', 'Sports & Outdoors');

INSERT INTO role(name) VALUES ('admin');
INSERT INTO role(name) VALUES ('user');

INSERT INTO product(amount_available, description, image, name, price, rate, category_id) VALUES (99, 'In this spectacular father/son collaboration, Stephen King and Owen King tell the highest of high-stakes stories: What might happen if women disappeared from the world of men?', 'http://www.pookpress.co.uk/wp-content/uploads/2017/08/150_years_Rackham_700px.png', 'Sleeping Beauties: A Novel', 16.99, 3.0, 1);
INSERT INTO product(amount_available, description, image, name, price, rate, category_id) VALUES (15, '[Contains explicit content] Overhearing athletic sex and giving your doctor a piece of your mind. To hear the series in full, log in to the Audible app and click on the "Channels"', 'http://apogeejournal.org/v4/wp-content/uploads/2017/08/IMG_4025-1-700x400.jpg', 'Ep. 1: Loud Neighbors and Body Mass', 24.99, 2.5, 1);
INSERT INTO product(amount_available, description, image, name, price, rate, category_id) VALUES (33, 'In this spectacular father/son collaboration, Stephen King and Owen King tell the highest of high-stakes stories: What might happen if women disappeared from the world of men?', 'http://apogeejournal.org/v4/wp-content/uploads/2017/07/Hazem-Fahmy-Author-Photo-for-APOGEE-700x400.jpg', 'Divine Collision: An African Boy, an American Lawyer, and Their Remarkable Battle for Freedom', 10.99, 3.0, 1);
INSERT INTO product(amount_available, description, image, name, price, rate, category_id) VALUES (24, 'Weeding Through Distortion to the Truth is a series of pieces that emerged out of Judiths witnessing the damaging distortions in our world at large, in the world of psychotherapy and recovery, and in the world of religion and spirituality.', 'http://www.konabarreno.com/wp-content/uploads/2017/08/Ways-to-Save-on-Your-Destination-Wedding1-700x400.jpg', 'Weeding Through Distortion to the Truth', 15.99, 3.5, 1);

INSERT INTO product(amount_available, description, image, name, price, rate, category_id) VALUES (39, 'Crime · A remake of the Alfred Hitchcock classic Dial M for Murder (1954)', 'http://cdn.renewcanceltv.com/wp-content/uploads/2015/06/perfectmurder-700x400.jpg', 'A Perfect Murder', 36.99, 3.5, 2);
INSERT INTO product(amount_available, description, image, name, price, rate, category_id) VALUES (45, 'A billionaire industrialist and genius inventor, Tony Stark', 'http://yourfamilyexpert.com/wp-content/uploads/2016/08/Iron-Man-e1495493654894-700x400.jpg', 'Iron Man', 44.99, 2.5, 2);
INSERT INTO product(amount_available, description, image, name, price, rate, category_id) VALUES (53, 'Minutes to Midnight takes its title from the Doomsday Clock', 'http://ste.india.com/sites/default/files/2016/01/27/454557-doomsday-clock.jpg', 'Minutes To Midnight', 30.99, 3.0, 2);
INSERT INTO product(amount_available, description, image, name, price, rate, category_id) VALUES (74, 'third-person action-adventure video game in development by Santa Monica Studio', 'http://gamerekon.com/wp-content/uploads/2012/10/KRATOS-GOD-OF-WAR-.jpg', 'God of War', 65.99, 3.5, 2);

INSERT INTO product(amount_available, description, image, name, price, rate, category_id) VALUES (25, 'Jim Gashs comfortable life as a Los Angeles lawyer and law professor nearly ensured he and Henry, a Ugandan boy languishing in prison for two murders he didn t commit, would never meet.', 'https://images-na.ssl-images-amazon.com/images/I/91dkMwdRzGL._SX355_.jpg', 'Mongoose Men\'s Tyax Pro 27.5" Wheel', 895.25, 4.0, 9);
INSERT INTO product(amount_available, description, image, name, price, rate, category_id) VALUES (25, 'Cross country mountain biking doesn\'t need to be complicated. The Mongoose Tyax understands your riding needs', 'https://images-na.ssl-images-amazon.com/images/I/91dkMwdRzGL._SX355_.jpg', 'Mongoose Men\'s Tyax Pro 27.5" Wheel', 895.25, 4.0, 9);
INSERT INTO product(amount_available, description, image, name, price, rate, category_id) VALUES (25, 'Cross country mountain biking doesn\'t need to be complicated. The Mongoose Tyax understands your riding needs', 'https://images-na.ssl-images-amazon.com/images/I/91dkMwdRzGL._SX355_.jpg', 'Mongoose Men\'s Tyax Pro 27.5" Wheel', 895.25, 4.0, 9);

INSERT INTO history(order_date, product_id, quantity, user_id) VALUES ('2017-06-25 10:25:55', 1, 1, 2);

INSERT INTO history(order_date, product_id, quantity, user_id) VALUES ('2017-07-02 11:25:55', 4, 2, 2);

INSERT INTO history(order_date, product_id, quantity, user_id) VALUES ('2017-08-11 10:09:55', 2, 1, 2);

INSERT INTO history(order_date, product_id, quantity, user_id) VALUES ('2017-08-10 10:03:55', 4, 3, 2);
