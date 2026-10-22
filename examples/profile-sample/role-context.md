# Role context

The truth behind each role on the CV. Tailoring skills read this before touching a bullet.

---

## Freightline | Senior Product Manager, Routing and Dispatch, March 2022 – June 2025

**Status:** ended June 2025. **Why-leaving framing:** "Freightline merged the routing and dispatch teams into one platform group after the Series C extension, and my role was one of three PM roles consolidated. I had already delivered the dispatch rebuild and was looking for the next zero-to-one problem."

**Company in one line:** Series C logistics SaaS, about 220 staff, routing, dispatch and proof-of-delivery for 180 mid-market carriers in the UK and Benelux.

**What actually happened:** Joined to own the routing module, which was a solver with a configuration UI that only two people at each carrier understood. Spent the first quarter sitting with planners at four carriers. Found that planners re-sequenced routes by hand every morning because the solver ignored delivery time windows, and that this ate roughly 40% of their morning (measured by shadowing 11 planners over two weeks, so the 40% is an observed average, not a telemetry figure). Proposed a rebuild around planner workflows rather than solver settings. Engineering wanted to swap the solver vendor first; I argued for shipping time-window support on the existing solver and fixing the workflow, and we did the vendor swap a year later once adoption was up. The rebuild took three quarters. Re-planning time dropped from 25 minutes to under 4 (telemetry, median across all carriers, measured over the quarter after launch). On-time delivery moved from 87% to 93% on the carriers who adopted time windows (telemetry, 6 points, but only on adopting carriers, which was 70% of the base by the end of year two). The usage tier for small carriers came out of sales losing deals under 20 vehicles; finance resisted because it complicated billing; we agreed a pilot of 15 carriers then rolled out. Managed two PMs from 2023.

**Numbers you can defend:** 25 min → under 4 min (telemetry median, post-launch quarter). 87% → 93% on-time (adopting carriers only; say "across the customer base" only with that caveat available). 35% YoY routing revenue (finance figure, FY2024). 45% fewer dispatch support tickets (support system tags, year on year). 180 carriers (customer count at exit). Team of 2 PMs plus a designer.

**Core bullets (default-keep when tailoring):**
- The dispatch rebuild bullet (25 minutes to under 4). It is the proof of discovery-led product work.
- The usage-based tier bullet. It is the commercial proof.
- The team leadership bullet when the role is Lead or above.

**Ordering rule:** the dispatch rebuild bullet is always first in this section.

**Phrasing locks:** always write "time-window-aware routing", not "real-time routing". The system planned routes nightly and re-planned on demand; it was not real-time, and a logistics interviewer will know the difference.

**Conditional inclusion:** none; this role always appears.

**Stakeholders (types and counts):** planners and dispatchers at 180 carriers (11 shadowed directly), three design-partner carriers, engineering leads (2 teams), finance (pricing), sales (packaging), the COO as executive sponsor.

**Tradeoff stories:**
- Workflow rebuild on the existing solver versus swapping the solver vendor first. Chose the workflow: adoption was the bottleneck, not solver quality. Gave up about 8% route-efficiency gain for a year. Would have chosen the vendor first if the customers had been large fleets where route efficiency is the whole economics.
- Usage-based tier for small carriers: gained the under-20-vehicle segment, paid for it with billing complexity and a quarter of finance time. Right call because that segment was 60% of inbound leads.

**Interview-only facts:** the biggest carrier ran about 1,100 vehicles; the solver vendor was replaced in 2024 and the name is under NDA; the Series C extension was smaller than announced.

**Never claim:** did not write solver code or choose the solver vendor (engineering did, with my input); did not own the driver app roadmap until 2024; did not manage engineers.

---

## Parcelo | Product Manager, then Senior Product Manager, Seller Platform, January 2019 – February 2022

**Status:** ended February 2022. **Why-leaving framing:** "I wanted to work on an operational product used daily by professionals, rather than a marketplace where most sellers shipped a few times a month."

**Company in one line:** UK parcel marketplace matching e-commerce sellers with regional couriers; about 90 staff; 4,000 active sellers at peak.

**What actually happened:** Joined as the second PM, owning seller onboarding. Onboarding was a three-week manual process (identity checks, address validation, integration setup by a support engineer). Interviewed 40 churned sellers; the main churn reason was never completing a first shipment. Built self-serve onboarding in two phases: automated identity and address first, then integration via a connector library. 1,200 sellers onboarded through self-serve in the first year (product analytics, confirmed with finance). Retention at 90 days moved from 61% to 74% (cohort analysis, compared the two years). The shipping-rates API came out of e-commerce platforms wanting to show live rates at checkout; defined the contract with two partner engineering teams and 30 platforms integrated within 18 months. Promoted to Senior PM in 2021 on taking the pricing and payouts area.

**Numbers you can defend:** 3 weeks → self-serve (same day for most sellers). 1,200 sellers in year one. 61% → 74% 90-day retention (cohorts). 30 platform integrations (partner directory count). 40 churned-seller interviews.

**Core bullets (default-keep when tailoring):**
- Self-serve onboarding (1,200 sellers). Proof of replacing a manual process with a product.
- Shipping-rates API. Proof of platform and partner work; keep for any platform, API or integrations role.

**Ordering rule:** none beyond keeping self-serve first.

**Phrasing locks:** "public shipping-rates API" (it was public and documented; do not downgrade to "integration").

**Conditional inclusion:** the promotion bullet only when space allows; it adds little for senior roles.

**Stakeholders (types and counts):** 4,000 sellers (40 interviewed), 30 platform partners (2 engineering teams directly), support team, finance (payouts), the CEO as sponsor for the API.

**Tradeoff stories:**
- Automating identity and address before integrations. Gained a fast win on the biggest drop-off; gave up six months where integrations were still manual and the sales team complained. Would reverse it if the sellers had been large merchants where integration was the first blocker.

**Interview-only facts:** peak monthly parcel volume about 400,000; the identity-check vendor was switched once after a false-positive problem.

**Never claim:** did not design the pricing algorithm (data science did); did not run the courier side of the marketplace.

---

## Northstar Analytics | Analyst, then Associate Product Manager, September 2016 – December 2018

**Status:** ended December 2018. **Why-leaving framing:** "I wanted to build product full-time rather than consult."

**Company in one line:** supply-chain analytics consultancy, about 40 staff, retail and FMCG clients.

**What actually happened:** Started as an analyst building demand-forecast spreadsheets per client. Noticed 12 clients had near-identical needs and proposed a shared dashboard. Led requirements with three client stakeholders and a two-engineer team; the dashboard replaced the spreadsheets for all 12 accounts within a year. Became associate PM on the back of it.

**Numbers you can defend:** 12 client accounts on the dashboard. Three client stakeholders in the requirements process.

**Core bullets (default-keep when tailoring):**
- The dashboard bullet. It shows the pattern of spotting a product in repeated work.

**Conditional inclusion:** include this role only when the job asks for 8+ years of experience or when analytics or forecasting is in the job description. Otherwise drop it to save space; the two later roles carry the CV.

**Stakeholders:** three client stakeholders directly, 12 accounts indirectly, two engineers.

**Tradeoff stories:**
- One shared dashboard versus per-client customisation. Gained maintainability and a sellable product; gave up two clients' niche features and one of them was unhappy for a quarter.

**Interview-only facts:** the forecasting method was a seasonal model tuned per client; no machine learning, and say so if asked.

**Never claim:** did not build forecasting models myself beyond spreadsheet logic; did not manage anyone.
