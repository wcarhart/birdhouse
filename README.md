# birdhouse
Passive tweet watcher from the command line

## Install
Install with homebrew:
```bash
brew tap wcarhart/tools
brew install birdhouse
```
Birdhouse replies on the Twitter API. You'll need proper API credentials to use it. If you need an API key, get one [here](https://developer.twitter.com/en/apply-for-access).

Install your API keys with the `birdhouse init` command:
```bash
birdhouse init $APIKEY $APISECRETKEY
```
You can use the `--usefiles` option if you want to read your API keys from files, so you don't log your API keys in your history. If you need to refresh your access token, you can use `birdhouse regenerate`. If you need to install a new set of API keys, you can overwrite the currently installed ones with `birdhouse init --force`.

## Usage
You can view the complete documentation with `birdhouse help --verbose`. You can also view the documentation for each command with `birdhouse COMMAND --help`. Here are a few key features!

### Stream tweets
```bash
birdhouse listen -a @CNN @CNNPolitics @cnni @cnnbrk
```
```
➤ @CNN | Mar 14, 2020 @ 13:44:05
  Republican National Committee Chairwoman Ronna McDaniel was tested for 
  coronavirus Friday night after experiencing a fever and flu-like symptoms, a 
  committee spokesman said in a statement https://cnn.it/2vpLF9W 

➤ @CNN | Mar 14, 2020 @ 14:00:19
  What can we learn about past pandemics to fight future outbreaks? The CNN 
  Film “Unseen Enemy: Pandemic” airs tonight at 11 p.m. ET 
  https://twitter.com/CNN/status/1238932998285930499/photo/1 

➤ @CNNPolitics | Mar 14, 2020 @ 14:03:07
  Joe Biden endorses Elizabeth Warren's bankruptcy plan, calling it "one of 
  the things that I think Bernie and I will agree on" https://cnn.it/2WfbLY4  
  https://twitter.com/CNNPolitics/status/1238933702538862594/photo/1 

➤ @cnnbrk | Mar 14, 2020 @ 14:09:13
  All public schools in North Carolina will be closed for at least two weeks 
  starting Monday, the governor says https://cnn.it/2TQPwpL  
  https://twitter.com/cnnbrk/status/1238935237582893058/photo/1 

➤ @cnni | Mar 14, 2020 @ 14:15:02
  Saudi Arabia has abandoned efforts to support crude prices and is preparing 
  to flood global markets with cheap oil. It's a risky strategy that could result 
  in lean years for a country that still relies on crude sales to drive much of 
  its domestic economy. https://cnn.it/2WdEZGJ
```

### Get recent tweets from specific users
```bash
birdhouse chirps @elonmusk -n 3
```
```
➤ @elonmusk | 4 hours ago
  Falcon 9’s first stage supporting this mission has flown to orbit four times 
  https://twitter.com/SpaceX/status/1238610282550714369/photo/1 

➤ @elonmusk | 4 hours ago
  Static fire test of Falcon 9 complete—targeting Sunday, March 15 at 9:22 
  a.m. EDT, 13:22 UTC, for launch of 60 Starlink satellites from LC-39A in 
  Florida

➤ @BHMoors | 4 hours ago
  @elonmusk cars should have saved driver preferences linked to profiles on 
  their Phones so that when they connect their Bluetooth the seat, mirrors and 
  temperature control adjust automatically to the drivers saved preference. Can 
  you make this happen?
    @elonmusk | 4 hours ago
    @BHMoors Coming soon
```

### View information about Twitter accounts
```bash
birdhouse bird @BillGates
```
```
Bill Gates (@BillGates) | Seattle, WA
Sharing things I'm learning through my foundation work and other interests.
  49066807 followers
  216 friends
  3272 tweets
  created on Jun 24, 2009
```
