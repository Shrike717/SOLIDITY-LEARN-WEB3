import Head from "next/head";

export default function Home() {
  return (
    <div>
      <Head>
      <title>WebDev Newz</title>
      <meta name="keywords" content="web development, programming"/>
      </Head>
      <h1>Welcome to Next</h1>
    </div>
  )
}



// import { server } from '../config'
// import ArticleList from '../components/ArticleList'

// export default function Home({ articles }) {
//   return (
//     <div>
//       <ArticleList articles={articles} />
//     </div>
//   )
// }

// export const getStaticProps = async () => {
//   const res = await fetch(`${server}/api/articles`)
//   const articles = await res.json()

//   return {
//     props: {
//       articles,
//     },
//   }
// }

// export const getStaticProps = async () => {
//   const res = await fetch(`https://jsonplaceholder.typicode.com/posts?_limit=6`)
//   const articles = await res.json()

//   return {
//     props: {
//       articles,
//     },
//   }
// }
