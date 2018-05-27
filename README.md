# Aragon DonationApp proposal




## Motivation

Ethereum community is passioned. If you dig into few github repos you will find tons of pull requests, EIPs, and feedbacks from people that are receiving a **single gas** for it. Teams create bounty campaigns, funds of investments and other more centralized rewards but still there is a lack of financial contribution for projects like Metamask, MyCrypto, MyEtherWallet, Etherscan, and others to keep with their good work. Also, there is an **urgent need** for developing infra tools like compilers, wallets, and frameworks, and we want to **incentivize** people to work on this kind of needs, by bringing the community closer.

## Proposal

Aragon allows you to create **unstoppable organizations,** and this is what we are searching for. My proposal is to create a **DonationsApp** inside Aragon's platform to bring community closer and helping those organizations to be truly unstoppable. Instead of just sending ETH to an address found in the bottom of the company's page, DAOs will be able to **request specific donations** approved by their community and provide an easy interface for executing it, integrated with Metamask. All donators can be listed on the page, and earn badges according to the type of contribution made. No values disclosed =)

## App integrations

 - **VotingApp**
 All Donation Requests will be submitted for community vote. Governance at its best! 
 
 - **Token Manager**
 Token Manager can be used for creating badge tokens. Depending on the category of the donation request (infra, events, human resources...) donators will earn specific badges to show what do they value the most.
 
 - **Finance**
 Finance app will be used to receive donations. When users click on "donate" button in the specific request a transaction to the Finance App wallet will be generated.

## Functionalities

 - **Request Donation (amount, description, category)**

Anyone can submit a new donation request. But, in order to have the request deployed a voting process will be started in the VotingApp in order to check if the community agrees with that request and the need for donation is legit. It can be to hire a new dev, buy computers, organizing meetups and so on. By defining a category, donators will be able to receive a specific badge so they can show their contribution to the community!

 - **Donate (id, amount)**

Every request will have a "donate" button so users can contribute. They can fill the entire request or partially, and will earn the badge according to the category of the request executed.

 - **List donators**

List all (or top) donators with their badges

 - **And there is room for a lot more!!**

## Challenges I ran into

Aragon module **doesn't work with Windows**. Yes, I know, I was almost the only one not using Mac in the whole place. Lesson learned! But since the goal of crypto is bringing technology to everyone, I will list here few changes to the module to make it work on Windows:

 - Dirname: this is a UNIX specific command, and is used in sync-assets script. Ran "cp -r node_modules/@aragon/ui dist/aragon-ui" manually in Power Shell
 - dev-launch. sh: even being able to run a bash file in windows, the commands were not working. Had to save the variables manually.

Even with those changes, I wasn't able to load the app. The proxy ABI came empty =(

## What is next

I will finish adapting the code to Windows and also set up a UNIX environment to develop the app. Will also brainstorm some new ideas! How about the badges being integrated with non-fungible tokens? ;)


