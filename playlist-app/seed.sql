-- Drop existing tables if they exist
DROP TABLE IF EXISTS playlists_songs;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS playlist;

-- Create the playlist table
CREATE TABLE playlist (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(200)
);

-- Create the songs table
CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    artist VARCHAR(100) NOT NULL
);

-- Create the playlists_songs table
CREATE TABLE playlists_songs (
    id SERIAL PRIMARY KEY,
    playlist_id INTEGER REFERENCES playlist(id),
    song_id INTEGER REFERENCES songs(id)
);

-- Insert initial data into the playlist table
INSERT INTO playlist (name, description) VALUES 
('Chill Vibes', 'Relaxing and soothing music'),
('Workout Mix', 'High energy songs to keep you moving'),
('Party Playlist', 'Hit songs for a great party atmosphere');

-- Insert initial data into the songs table
INSERT INTO songs (title, artist) VALUES 
('Song 1', 'Artist A'),
('Song 2', 'Artist B'),
('Song 3', 'Artist C'),
('Song 4', 'Artist D'),
('Song 5', 'Artist E');

-- Insert initial data into the playlists_songs table
INSERT INTO playlists_songs (playlist_id, song_id) VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 1);