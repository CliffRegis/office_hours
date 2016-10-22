var CommentList = React.createClass({
  getInitialState(){
    let video = JSON.parse(this.props.video);
    return {video: video};
  },

  render() {
    let comments = this.state.video.comments.map((comment) => {
      return this.renderComment(comment);
    });

    return (
      <div>{comments}</div>
    );
  },

  renderComment(comment) {
    return (
      <video key={comment.id}>
        <h3>Comment by { comment.user.name }</h3>
        <p>{ comment.content }</p>
      </video>
    );
  }
});