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
  "A good programmer is someone who always looks both ways before crossing a one-way street. – Doug Linder",
  "The best way to predict the future is to invent it. – Alan Kay",
  "The only way to learn a new programming language is by writing programs in it. – Dennis Ritchie",
  "Software is like sex: it’s better when it’s free. – Linus Torvalds",
  "The real problem is not whether machines think but whether men do. – B. F. Skinner",
  "There are only two hard things in computer science: naming things, cache invalidation, and off-by-one errors. – Martin Fowler",
  "Any sufficiently advanced technology is indistinguishable from magic. – Arthur C. Clarke",
  "Optimism is an occupational hazard of programming: feedback is the treatment. – Kent Beck",
  "In programming, the hard part isn't solving problems, but deciding what problems to solve. – Paul Graham",
  "The best error message is the one that never shows up. – Thomas Fuchs",
  "You can’t have great software without a great team. – Anonymous",
  "It’s not that we need new ideas, but we need to stop having old ideas. – Edwin Land",
  }
 

    -- Function to get a random quote
    local random_quote = quotes[math.random(#quotes)]

    -- Set up the plugin with a random quote
    require('btw').setup({
      text = random_quote,
    })
  end,
}

