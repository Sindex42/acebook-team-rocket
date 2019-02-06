class AllPosts extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      posts: []
    }
  }

  componentDidMount () {
    fetch('/api/v1/posts.json')
    .then((response) => { return response.json() })
    .then((data) => {this.setState({ posts: data }) })
  }

  render () {
    var posts = this.state.posts.map((post) => {
      return(
        <div key={post.id}>
          <p>{post.message}</p>
          <p>{post.created_at}</p>
        </div>
      )
    })

    return (
      <div>
        {posts}
      </div>
    )
  }
}
