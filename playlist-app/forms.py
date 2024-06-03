"""Forms for playlist app."""

from wtforms import StringField, SelectField
from flask_wtf import FlaskForm
from wtforms.validators import DataRequired, Length


class PlaylistForm(FlaskForm):
    """Form for adding playlists."""

    name = StringField('Playlist Name', validators=[DataRequired(), Length(max=100)])
    description = StringField('Description', validators=[Length(max=200)])


class SongForm(FlaskForm):
    """Form for adding songs."""

    title = StringField('Song Title', validators=[DataRequired(), Length(max=100)])
    artist = StringField('Artist', validators=[DataRequired(), Length(max=100)])


# DO NOT MODIFY THIS FORM - EVERYTHING YOU NEED IS HERE
class NewSongForPlaylistForm(FlaskForm):
    """Form for adding a song to playlist."""

    song = SelectField('Song To Add', coerce=int)
