return {
  "letieu/btw.nvim",
  config = function()
    -- Seed the random number generator to get different results each time Neovim starts
    math.randomseed(os.time())

    -- Define a list of programming quotes
    local quotes = {
      "Talk is cheap. Show me the code. – Linus Torvalds",
      "Programs must be written for people to read, and only incidentally for machines to execute. – Harold Abelson",
      "Simplicity is the soul of efficiency. – Austin Freeman",
      "The most disastrous thing that you can ever learn is your first programming language. – Alan Kay",
      "Good code is its own best documentation. – Steve McConnell",
      "It’s not a bug – it’s an undocumented feature. – Anonymous",
      "Code is like humor. When you have to explain it, it’s bad. – Cory House",
      "Make it work, make it right, make it fast. – Kent Beck",
      "The function of good software is to make the complex appear to be simple. – Grady Booch",
      "First, solve the problem. Then, write the code. – John Johnson",
      "Any fool can write code that a computer can understand. Good programmers write code that humans can understand. – Martin Fowler",
      "Programs are meant to be read by humans and only incidentally for computers to execute. – Donald Knuth",
      "In theory, there is no difference between theory and practice. But, in practice, there is. – Jan L. A. van de Snepscheut",
      "It’s not a bug, it’s an undocumented feature. – Anonymous",
      "You should name a variable using the same care with which you name a first-born child. – Robert C. Martin",
      "There are only two hard things in computer science: cache invalidation and naming things. – Phil Karlton",
      "If debugging is the process of removing bugs, then programming must be the process of putting them in. – Edsger Dijkstra",
      "There are only two hard things in computer science: cache invalidation and naming things. – Phil Karlton",
      "Computers are fast; programmers keep it slow. – Anonymous",
      "When debugging, novices insert print statements, experts remove them. – Unknown",
    }

    -- Function to get a random quote
    local random_quote = quotes[math.random(#quotes)]

    -- Set up the plugin with a random quote
    require('btw').setup({
      text = random_quote,
    })
  end,
}

