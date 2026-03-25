# Advanced Use Cases

PACTA for Banks analyses support a wide range of real-world
applications. This section highlights key use cases that are
particularly suited to this type of analysis, all of which are either
actively used or currently being explored by PACTA users.

## Potential Follow-up Actions Based on PACTA for Banks Analysis

These use cases leverage standard PACTA for Banks outputs - derived from
either the [market share
approach](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.html#market-share-approach)
or the [sectoral decarbonization
approach](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.html#sectoral-decarbonization-approach)
— at the loan book or company level. They vary in intended audience,
targeting either internal stakeholders (such as management or other
departments) or external parties (such as clients, regulators, or the
general public). Additionally, some focus on communication and
reporting, while others guide internal decision-making or drive
strategic change.

This section provides detailed explanations of well-established use
cases, while others are mentioned briefly, particularly those still
requiring future exploration. Notably, the examples do not include the
standard PACTA plots, as follow-up analyses typically rely on precise
numerical outputs rather than visualizations. While plots are valuable
for interpreting PACTA results, detailed reporting and decision-making
are generally based on quantitative data—except in cases of
public-facing analyses, which are not covered in depth here.

### Use Case 1: Regulatory Compliance

#### Description

Reporting or disclosing loan book alignment or targets to a financial
supervisor or regulator.

#### Level of Analysis

Regulators typically focus on the overall loan book. Regulations
generally apply to the structure of the loan book, making
portfolio-level PACTA analysis the most appropriate depth of analysis
for this use case.

#### Potential Application

**Overview**

Financial regulators worldwide have introduced climate-related financial
risk regulations, varying in scope and requirements. Many regulations
mandate reporting on climate-relevant exposures, often including
forward-looking metrics such as emissions or production alignment with
external benchmarks or financial institutions’ transition targets.
Reporting requirements may differ based on:

- Type of climate metrics (e.g. absolute emissions, financed emissions,
  production-based emission intensity, production volumes or technology
  mix)
- Scope and granularity (e.g., aggregated loan book exposures across all
  sectors, aggregate loan book exposures across climate-relevant sector,
  or sector-specific exposure reporting)
- Value chain coverage (e.g., full value chain reporting or focusing on
  the most emission-intensive segments)

**Example**

If a regulation aligns with PACTA’s scope, a financial institution could
integrate PACTA analysis into regulatory reporting. For instance, in a
materiality assessment of climate-related exposures, a bank may map its
loan book to PACTA-defined sectors. A bank lending to power generation
and steel manufacturing clients, along with other non-PACTA sector
clients, could base its materiality assessment on the following
calculation:

``` r
materiality <- coverage %>% 
  mutate(sector = if_else(!sector %in% c("power", "cement"), "not in scope", sector)) %>% # we assume this bank only lends to cement, power, and not-in-scope companies
  summarise(
    sector_sum_loan_size_outstanding = sum(loan_size_outstanding),
    .by = sector
  ) %>%
  mutate(
    sector_share_loan_size_outstanding = round(sector_sum_loan_size_outstanding / sum(sector_sum_loan_size_outstanding), 2)
  )
```

Materiality assessment

loan book exposures to climate relevant sectors

The bank might report to the supervisor along the lines of:

- 32% of the loan book (27925291 USD) go towards power generation
- 15% of the loan book (13099969 USD) go towards cement production
- 53% of the loan book (45559559 USD) go towards other sectors that are
  not climate relevant

This can be a direct outcome based on the matched and prioritized data
set compared with values in the raw loan book data set.

Beyond exposure and materiality reporting, some regulations may require
alignment metrics or sector targets, which PACTA can also provide.
Forward-looking metrics often require comparison to an external
benchmark, typically derived from climate transition scenarios. If a
regulation mandates a specific benchmark data source, financial
institutions should adhere to it. Otherwise, they should be prepared to
justify their choice, whether based on sectoral granularity, perceived
credibility or likelihood of scenario assumptions, or regulatory
preference for credibility and comparability. In some cases, regulators
may provide explicit benchmark values for alignment assessments.

For example, a regulator may require financial institutions to report
sectoral physical emission intensity (for SDA sectors) or the
high-carbon share (for market share sectors) of their loan book,
compared to both a 2030 scenario benchmark (e.g., scenario X) and the
financial institution’s own 2030 target. In such cases, users can
extract the portfolio-weighted emission intensity from their PACTA for
Banks results and compare it to the corresponding 2030 scenario value.
If the financial institution has set sector-specific targets, these
should also be included in the reporting.

``` r
tech_mix_power_current <- market_share_targets_portfolio %>% 
  filter(
    sector == "power",
    region == "global",
    metric == "projected",
    year == 2020
  ) %>% 
  select(sector, technology, metric, year, technology_share) %>% 
  mutate(technology_share = round(technology_share, 3))

tech_mix_power_target <- market_share_targets_portfolio %>% 
  filter(
    sector == "power",
    region == "global",
    metric == "target_sds",
    year == 2030
  ) %>% 
  select(sector, technology, metric, year, technology_share) %>% 
  mutate(technology_share = round(technology_share, 3))

tech_mix_power <- tech_mix_power_current %>% 
  bind_rows(tech_mix_power_target)

ei_cement_current <- sda_targets_portfolio %>% 
  filter(
    sector == "cement",
    region == "global",
    emission_factor_metric == "projected",
    year == 2020
  ) %>% 
  select(sector, emission_factor_metric, year, emission_factor_value) %>% 
  mutate(emission_factor_value = round(emission_factor_value, 3))

ei_cement_target <- sda_targets_portfolio %>% 
  filter(
    sector == "cement",
    region == "global",
    emission_factor_metric == "target_demo",
    year == 2030
  ) %>% 
  select(sector, emission_factor_metric, year, emission_factor_value) %>% 
  mutate(emission_factor_value = round(emission_factor_value, 3))

ei_cement_scenario <- sda_targets_portfolio %>% 
  filter(
    sector == "cement",
    region == "global",
    emission_factor_metric == "adjusted_scenario_demo",
    year == 2030
  ) %>% 
  select(sector, emission_factor_metric, year, emission_factor_value) %>% 
  mutate(emission_factor_value = round(emission_factor_value, 3))

ei_cement <- ei_cement_current %>% 
  bind_rows(ei_cement_target) %>% 
  bind_rows(ei_cement_scenario)
```

The outcome would look as follows:

Power sector alignment and targets

high-carbon share

Cement sector alignment and targets

emission intensity

And accordingly, the bank might report:

- The current high-carbon share (coal-fired, gas-fired and oil-fired
  power plants) of the companies the bank lends to in the power sector
  is: 32.6%
- The target high-carbon share in the power sector that the bank has set
  itself based in the “target_sda” scenario for 2030 is: 24.2%
- The current emission intensity of the companies the bank lends to in
  the cement sector is: 0.664 tonnes of CO²/tonne of cement
- The target emission intensity in the cement sector that the bank has
  set itself based in the “target_demo” scenario for 2030 is: 0.37
  tonnes of CO²/tonne of cement
- The scenario value of the emission intensity in the cement sector in
  the “adjusted_scenario_demo” scenario for 2030 is: 0.373 tonnes of
  CO²/tonne of cement

This would be an indication that the bank has not reached its 2030
targets in either of the two sectors, as of 2020, the start year of the
analysis.

The bank would also report that their target for the cement sector is
slightly more ambitious than the scenario value. For sectors using a
[market share
approach](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.html#market-share-approach),
the PACTA calculations do not directly return the technology share of
the scenario. Users would have to derive this value based on the input
scenario data, if necessary.

#### Notes and Caveats

- *Regulatory Fit*: PACTA is well-suited for reporting where regulations
  require sectoral decomposition of exposures and climate metrics based
  on production-based emission intensity or absolute production volumes.
  However, PACTA focuses on the highest-emitting parts of sectoral value
  chains (e.g., power generation but not transmission or services). If
  regulations require full value chain coverage, PACTA may not be
  suitable. Engaging with regulatory bodies to clarify expectations is
  recommended.

- *Out-of-Scope Sectors*: If regulations require disclosure on sectors
  beyond PACTA’s scope, users must assess unmatched loans to determine
  if they align with additional required sectors. Similarly, for
  in-scope sectors, reviewing unmatched loans may be necessary to
  account for upstream or downstream value chain segments not covered by
  PACTA.

- *Jurisdictional Differences*: Regulatory requirements vary by country,
  meaning PACTA cannot provide universal guidance on compliance. Users
  should assess how PACTA aligns with their specific regulations and
  consult their supervisory authority if uncertain.

- *Scenario Compatibility*: PACTA requires sectoral pathways that map to
  its scopes and based on production metrics. Scenarios limited to
  absolute emissions, financial projections, or lacking sectoral
  granularity are not compatible. If regulations mandate an incompatible
  scenario, alternative analysis methods may be needed.

### Use Case 2: Sectoral Target Setting

#### Description

Setting internal sectoral decarbonization targets at the institutional
level.

#### Level of Analysis

Financial institutions aiming to reduce their Scope 3 emissions often
focus on decarbonizing client exposures in their loan books. Since
emission reduction strategies and timelines vary across sectors, setting
sector-specific targets helps account for these differences.

For loan book decarbonization, applying a sectoral approach provides an
appropriate level of granularity for institution-wide targets.
Company-level targets, which may require additional detail beyond PACTA
for Banks, can be developed in collaboration with individual clients.

#### Potential application

**Overview**

Financial institutions set sectoral decarbonization targets for various
reasons, including regulatory requirements, reputational goals, and
strategic business considerations. Targets can be based on absolute or
financed emissions, though these are outside PACTA’s scope. Instead,
PACTA supports targets based on production pathways and production-based
emission intensities, which directly relate to major sources of GHG
emissions.

Sectoral targets in PACTA are calculated using either the [market share
approach](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.html#market-share-approach)
(for sectors with technology-level production pathways) or the [sectoral
decarbonization
approach](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.html#sectoral-decarbonization-approach)
(for sectors with production-based emission intensities). Both
approaches distribute the decarbonization burden equally across all
actors in a sector, based on the loan book’s initial composition.

Financial institutions may choose to set targets for all sectors or
focus on climate-relevant ones, applying a uniform approach or tailoring
methods to different sectors. PACTA for Banks is particularly effective
for key emissions-intensive sectors such as oil and gas extraction, coal
mining, automotive manufacturing, power generation, cement production,
steel manufacturing, and aviation. It focuses on the most impactful
parts of each sector’s value chain, ensuring targets that drive
meaningful emissions reductions.

**Example**

To calculate sector-level targets for a loan book, users can filter
portfolio-level PACTA for Banks results by target year, scenario
benchmark, and relevant geographic region. The baseline year is
determined by selecting a scenario file where the first year aligns with
the intended baseline. Ensuring consistency across the ABCD dataset,
loan book composition, and baseline year is critical for accurate
target-setting.

``` r
tech_mix_sector_targets <- market_share_targets_portfolio %>% 
  filter(
    region == "global",
    metric == "target_sds",
    year == 2030
  ) %>% 
  select(sector, technology, metric, year, technology_share) %>% 
  mutate(technology_share = round(technology_share, 3))

high_carbon_share_sector_targets <- tech_mix_sector_targets %>% 
  filter(technology %in% c("coalcap", "gascap", "oilcap", "ice")) %>% 
  summarise(
    high_carbon_share = sum(technology_share, na.rm = TRUE),
    .by = c("sector", "metric", "year")
  )

ei_sector_targets <- sda_targets_portfolio %>% 
  filter(
    region == "global",
    emission_factor_metric == "target_demo",
    year == 2030
  ) %>% 
  select(sector, emission_factor_metric, year, emission_factor_value) %>% 
  mutate(emission_factor_value = round(emission_factor_value, 3))

available_sectors <- unique(pull(filter(matched, sector %in% c(unique(scenario$sector), unique(co2$sector))), sector))
```

In this example, we set targets for a bank, based on its loan book
composition in 2020. The loan book contains exposures to the following
PACTA sectors, for which trajectories are available in the scenarios:
power, automotive, cement, steel. The bank wants to set targets for the
year 2030. The bank has decided to use the “target_sda” scenario as a
benchmark for setting targets based on the [market share
approach](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.html#market-share-approach)
and “target_demo” for setting targets based on the [sectoral
decarbonization
approach](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.html#sectoral-decarbonization-approach).
Targets are set based on global scenario benchmarks. The sector targets
for 2030 based on this loan book are as follows:

Sector targets

high-carbon share

For sectors with technology pathways, the banks could set targets based
on the high-carbon share of technologies in the sector. Alternatively it
could break down the targets by individual technologies.

Sector targets

technology share

In sectors without technology pathways, the bank could set targets based
on the emission intensity of the sector.

Sector targets

emission intensity

#### Notes and Caveats

- *Sectoral Coverage*: PACTA is suitable for setting production-based
  targets focused on high-impact segments of sectoral value chains. It
  is not designed for targets based on absolute or financed emissions.
  If an institution seeks full-sector coverage across all client
  industries or a uniform approach for all sectors, PACTA alone will not
  suffice and may need to be supplemented with other tools.

- *Value Chain Focus*: PACTA focuses on value chain segments most
  critical to GHG reductions, requiring climate transition scenarios
  with either sector-level production-based emission intensities or
  technology-level production pathways. Depending on sector
  characteristics, targets are derived using either the [market share
  approach](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.html#market-share-approach)
  or the [sectoral decarbonization
  approach](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.html#sectoral-decarbonization-approach).

- *Regional Benchmarks*: Institutions may prefer regional benchmarks,
  particularly in emerging markets and developing countries (EMDCs),
  where transitions may lag due to financial constraints or economic
  development needs. However, not all climate scenarios provide granular
  regional breakdowns for every sector.

- *Rebaselining Targets*: Sector targets are initially based on the loan
  book composition in the baseline year. If the loan book structure
  changes significantly, financial institutions may consider
  rebaselining targets by recalculating them using the same baseline and
  target years but with an updated loan book composition. This ensures
  targets reflect current exposures while maintaining consistency with
  the original methodology.

### Use Case 3: Risk Management (Client-Side)

#### Description

Engaging clients to manage climate transition risk.

#### Level of Analysis

Managing transition risk at the client level requires company-specific
insights, which can be obtained by running PACTA for Banks at the
company level. While this analysis is unlikely to be the sole input for
risk management, it serves as a valuable tool in assessing client
exposure and alignment with transition pathways.

#### Potential Application

**Overview**

A company-level PACTA for Banks analysis provides insights into how a
company’s production (or emission intensity) is expected to evolve in
the medium term compared to external benchmarks. These benchmarks,
derived from climate transition scenarios, are scaled to the company
level using either the [market share
approach](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.html#market-share-approach)
or the [sectoral decarbonization
approach](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.html#sectoral-decarbonization-approach).
Deviations from these benchmarks can serve as indicators of transition
risk, informing financial institutions’ risk management strategies.

PACTA can complement other company-level risk assessments, including
financial models such as net present value or probability of default
calculations. However, since these applications fall outside PACTA’s
scope, this section focuses on production-based indicators.

When managing transition risk, financial institutions can consider two
primary approaches:

1.  **Client Engagement**: Helping clients mitigate their transition
    risk by providing insights into how their production plans compare
    to benchmarks and guiding them towards implementing a transition
    plan. This may involve shifting away from high-carbon activities,
    investing in low-carbon technologies, or securing transition
    finance. More details on client transition assessments and
    transition finance can be found in RMI’s [Transition Finance
    Resource Hub](https://rmi.org/transitionfinance/).

2.  **Exposure Management**: If the client is unwilling or unable to
    address transition risk, the financial institution may choose to
    reduce its exposure, including potentially exiting the client
    relationship at maturity.

**Example**

Suppose a bank aims to reduce transition risk in its loan book to align
with its defined risk appetite. After assessing its portfolio, say it
identifies power and cement as the primary risk-intensive sectors. In
the power sector, the key transition risk stems from coal-fired power
generation.

The bank can use company-level PACTA results to compare counterparties’
production plans against company-specific benchmarks, based on the same
transition scenarios used for sector-level targets. By conducting the
analysis in 2020 and assessing deviations over a five-year horizon, the
bank can identify which companies are proactively transitioning away
from their coal power business and which ones are not, informing its
engagement or exposure management strategy. The following code is a an
example of how to obtain the appropriate subset of company level results
and restructure the data to easily calculate a range of metrics to
identify and analyse company-level misalignment:

``` r
power_company_tech_mix <- market_share_targets_company %>% 
  filter(
    region == "global",
    sector == "power",
    metric %in% c("projected", "target_sds"),
    year %in% c(2020, 2025),
    technology == "coalcap"
  ) %>% 
  select(name_abcd, sector, technology, metric, year, technology_share) %>%
  mutate(technology_share = round(technology_share, 3) * 100) %>% 
  pivot_wider(
    names_from = c("metric", "year"),
    values_from = "technology_share",
    names_prefix = "tech_share_"
  ) %>% 
  select(-"tech_share_target_sds_2020")
```

Company-level technology share of coal power capacity

restructured for input into company metrics

``` r
power_company_production <- market_share_targets_company %>% 
  filter(
    region == "global",
    sector == "power",
    metric %in% c("projected", "target_sds"),
    year %in% c(2020, 2025),
    technology == "coalcap"
  ) %>% 
  select(name_abcd, sector, technology, metric, year, production) %>%
  mutate(production = round(production)) %>% 
  pivot_wider(
    names_from = c("metric", "year"),
    values_from = "production",
    names_prefix = "prod_"
  ) %>% 
  select(-"prod_target_sds_2020")
  
```

Company-level capacity level of coal power

restructured for input into company metrics

The bank can now determine the most misaligned companies in the coal
power business (based on technology share or production capacities) and
engage with these companies to understand the reasons for the deviation.
It can then help them develop a transition plan to reduce their exposure
to high-carbon activities. A few calculations that help with determining
the right approach to engaging these companies are laid out below:

- let $T_{c,i}(t)$ be the technology share of company $c$ and technology
  $i$ at time $t$, and
- let $p_{c,i}(t)$ be the production (or capacity) level of company $c$
  and technology $i$ at time $t$.

1.  The bank can calculate the percent deviation of the projected
    technology share $T^{projected}$ relative to the target technology
    share $T^{target}$ of a company $c$ for a technology $i$ in $t_{5}$
    as follows:

$$T_{c,i}^{deviation}\left( t_{5} \right) = \frac{T_{c,i}^{projected}\left( t_{5} \right) - T_{c,i}^{target}\left( t_{5} \right)}{T_{c,i}^{target}\left( t_{5} \right)}$$
This can be a good first indicator of misalignment at the company level.
A related calculation would be to calculate the percent deviation of the
projected production (or capacity) level $p^{projected}$ relative to the
target production level $p^{target}$ of a company $c$ for a technology
$i$ in $t_{5}$, again as follows:

$$p_{c,i}^{deviation}\left( t_{5} \right) = \frac{p_{c,i}^{projected}\left( t_{5} \right) - p_{c,i}^{target}\left( t_{5} \right)}{p_{c,i}^{target}\left( t_{5} \right)}$$

These two calculations mostly aim to identify the degree of misalignment
of a company with the scenario target. Next it may be necessary to
determine the severity of that misalignment.

2.  The bank can calculate the relative deviation of the difference
    between projected production
    $p_{c,i}^{projected}\left( t_{5} \right)$ and target production
    $p_{c,i}^{target}\left( t_{5} \right)$ relative to the initial
    production level $p_{c,i}^{projected}\left( t_{0} \right)$ of a
    company $c$ for a technology $i$ as follows:

$$p_{c,i}^{deviation}\left( t_{0,5} \right) = \frac{p_{c,i}^{projected}\left( t_{5} \right) - p_{c,i}^{target}\left( t_{5} \right)}{p_{c,i}^{projected}\left( t_{0} \right)}$$

Comparing the difference in $t_{5}$ with the initial company production
level highlights how large the remaining effort can be considered. For
example, if a company misses its coal power target in $t_{5}$ by 5MW,
this would be relatively more severe if the company initially operated
10MW of coal power capacity and relatively less severe if it initially
operated 50MW of coal capacity. After understanding the severity of the
misalignment, it may be necessary to determine the underlying drivers of
the misalignment.

3.  The bank can now calculate the relative change in production (or
    capacity) level $p_{c,i}^{projected}$ over time from $t_{0}$ to
    $t_{5}$ of a company $c$ for a technology $i$ as follows:

$$p_{c,i}^{change}\left( t_{0,5} \right) = \frac{p_{c,i}^{projected}\left( t_{5} \right) - p_{c,i}^{projected}\left( t_{0} \right)}{p_{c,i}^{projected}\left( t_{0} \right)}$$

If a company has reduced its coal power capacity but is still
misaligned, it may be an indication that the company is struggling to
replace its coal power capacity with other energy sources. In this case,
the bank may want to engage with the company to help them develop a
transition plan.

If a company has increased its coal capacity but is still misaligned, it
may be an indication that the company is not taking transition risk
seriously and the bank may want to question the strategy of that
company.

``` r
cement_company_ei <- sda_targets_company %>% 
  filter(
    region == "global",
    sector == "cement",
    emission_factor_metric %in% c("projected", "target_demo"),
    year %in% c(2020, 2025)
  ) %>% 
  select(name_abcd, sector, year, emission_factor_metric, emission_factor_value) %>%
  mutate(emission_factor_value = round(emission_factor_value, 3)) %>% 
  pivot_wider(
    names_from = c("emission_factor_metric", "year"),
    values_from = "emission_factor_value",
    names_prefix = "ei_"
  ) %>% 
  select(-"ei_target_demo_2020")
```

Similarly, the bank can now determine the most misaligned cement
companies (based on projected emission intensity) and engage with these
companies as well. Following up on this, the bank can again help these
companies develop a transition plan to reduce their emission intensity
and align their business more with energy transition targets or trends.

Company-level emission intensity per tonne of cement

restructured for input into company metrics

The production related-equations from above can be adjusted for emission
intensity sectors. The bank can use these to identify the most
misaligned companies and understand the reasons for their deviation.

- let $I_{c,s}(t)$ be the emission intensity in emissions per physical
  unit of production or capacity of a company $c$ in sector $s$ at time
  $t$

1.  The bank can calculate the percent deviation of the projected
    emission intensity $I_{c,s}^{projected}\left( t_{5} \right)$
    relative to the target emission intensity
    $I_{c,s}^{target}\left( t_{5} \right)$ of a company $c$ in a sector
    $s$ in $t_{5}$ as follows:

$$I_{c,s}^{deviation}\left( t_{5} \right) = \frac{I_{c,s}^{projected}\left( t_{5} \right) - I_{c,s}^{target}\left( t_{5} \right)}{I_{c,s}^{target}\left( t_{5} \right)}$$

This first indicator of misalignment can also reveal that all misaligned
cement companies seem to be relatively far off their target in this
example, which may lead the bank to inspect if there are reasons beyond
the immediate control of the companies for this misalignment. In the
cement sector, one might assume that there is not yet a technology to
significantly lower the emission intensity available to any company,
which would limit their ability to meet the emissions target in the
short term.

The remaining calculations presented above would translate to emission
intensity sectors as follows:

2.  Relative deviation of the difference between projected emission
    intensity $I_{c,s}^{projected}\left( t_{5} \right)$ and target
    emission intensity $I_{c,s}^{target}\left( t_{5} \right)$ relative
    to the initial emission intensity
    $I_{c,s}^{projected}\left( t_{0} \right)$ of a company $c$ in a
    sector $s$:

$$I_{c,s}^{deviation}\left( t_{0,5} \right) = \frac{I_{c,s}^{projected}\left( t_{5} \right) - I_{c,s}^{target}\left( t_{5} \right)}{I_{c,s}^{projected}\left( t_{0} \right)}$$

3.  Relative change in emission intensity $I_{c,s}^{projected}$ of a
    company $c$ over time from $t_{0}$ to $t_{5}$ in a sector $s$:

$$I_{c,s}^{change}\left( t_{0,5} \right) = \frac{I_{c,s}^{projected}\left( t_{5} \right) - I_{c,s}^{projected}\left( t_{0} \right)}{I_{c,s}^{projected}\left( t_{0} \right)}$$

In the end, any of the companies the bank engages with turns out to be
unwilling to or incapable to manage their transition risk, the bank can
also use this information to assess the relationship with these
companies and potentially reduce the financial exposure.

#### Notes and Caveats

- PACTA for Banks should not be the sole factor in assessing client
  transition risk but serves as a valuable tool for evaluating alignment
  with the bank’s climate risk tolerance.

- Comparing clients to the same scenario benchmark used for sector-level
  target setting can help ensure alignment with expected market trends.

- Banks should incorporate multiple data sources when evaluating client
  risk, as PACTA alone does not provide a comprehensive risk profile.

### Use Case 4: Transition Planning (Client-Side)

#### Description

Assessing the credibility of transition plans proposed by clients.

#### Level of Analysis

Company-level PACTA for Banks analysis provides insights into client
production plans over the medium term. These projections can be used to
evaluate the credibility of a client’s transition plan and its alignment
with climate transition benchmarks.

#### Potential Application

**Overview**

Clients may develop transition plans to demonstrate their commitment to
transitioning to a low-carbon economy or to seek transition financing.
If a transition plan includes projected production levels and/or
production-based emission intensities, banks can assess its credibility
by comparing these projections with PACTA for Banks results. A credible
plan should align with realistic production and emission intensity
trajectories.

If there are significant discrepancies between a company’s projections
and PACTA results, banks and clients should investigate the cause.
Differences may stem from data gaps, asset modeling inconsistencies, or
variations in consolidation methods. For instance, PACTA assigns
production based on an equity ownership approach, while a client may use
a financial control method. Resolving such differences ensures accurate
attribution of production values before assessing the validity of the
transition plan.

**Example**

Suppose a bank has a power sector client that plans to reduce its share
of coal-fired power generation. The client provides projections for its
total coal capacity and power technology mix through 2025. The bank
compares these projections with PACTA for Banks results over the same
time-frame to evaluate alignment and credibility.

``` r
power_company_coal_plan <- market_share_targets_company %>% 
  filter(
    region == "global",
    sector == "power",
    metric == "projected",
    technology == "coalcap"
  )

company_select <- power_company_coal_plan$name_abcd[1]

pacta_power_company_coal_plan <- power_company_coal_plan %>% 
  filter(name_abcd == company_select) %>%
  select(name_abcd, sector, technology, metric, year, production, technology_share) %>%
  mutate(
    production = round(production),
    technology_share = round(technology_share, 3)
  )
```

The comparison between the two datasets reveals a significantly lower
reported coal power share and level of capacity starting in 2023,
compared to the PACTA for Banks projections.

Company provided coal power projections

PACTA-based coal power projections

Upon engaging with the client Bernardi, Bernardi e Bernardi SPA, it is
determined that the client had already deducted the capacity of a
coal-fired power plant from the total capacity in their current
projections for which initial plans of an early retirement in 2023 were
discussed. However, no final deal had been signed at this stage, so the
bank and the client agree that the banks projections should be used as
the baseline and the client’s projections more accurately describe an
aspirational step in the transition plan. With these clarifications, the
bank and the client can now assess if their is a role to play for the
bank in the early retirement of the coal plant or in other
yet-to-be-determined transition activities.

#### Notes and Caveats

- Companies may use different consolidation methods than PACTA, so
  production values provided by clients should be carefully reviewed.
- If discrepancies cannot be resolved, users may need to consult the
  provider of the ABCD data used in the PACTA analysis. Data providers
  can offer methodological documentation and help identify asset-level
  issues.
- Since RMI is not a data provider, users must contact the data provider
  directly. If using Asset Impact, contact details are available on the
  [Asset Impact website](https://asset-impact.gresb.com/).

### Other Use Cases

PACTA for Banks can support additional applications beyond those covered
in detail. Potential use cases include:

- **Risk Management Enhancements**: Adjusting internal risk positions
  based on PACTA analyses.
- **Identifying Growth Opportunities**: Using PACTA insights to expand
  into sectors or identify clients well-positioned for transition.
- **Developing Transition Finance Solutions**: Informing the creation of
  new products or services in transition finance. More details can be
  found in the [Transition Finance Resource
  Hub](https://rmi.org/transitionfinance/).

With further research, these use cases may be explored in more detail,
and incorporated in future editions of this cookbook.

## Supplementing ABCD data

When running a PACTA for Banks analysis, some in-scope companies from
the loan book may not be found in the ABCD dataset. Since ABCD coverage
is not always comprehensive, key exposures may occasionally be missing.
If a company is confirmed to be in scope and the [matching
process](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_running_the_analysis.html#matching-process)
does not yield a result, manually supplementing the ABCD dataset is an
option.

However, this process can be complex and time-consuming, so it should
not be the default approach. Before resorting to manual supplementation,
consider refining the matching process by adjusting parameters and
rerunning the analysis.

### Example

Suppose you have a loanbook containing a loan to the power company “Acme
Co.”

``` r
library(pacta.loanbook)

loanbook <- 
  data.frame(
    id_loan = "L1",
    id_direct_loantaker = "C123",
    name_direct_loantaker = "Acme Co.",
    id_ultimate_parent = "C45",
    name_ultimate_parent = "Acme Holdings",
    loan_size_outstanding = 1e7,
    loan_size_outstanding_currency = "USD",
    loan_size_credit_limit = 1e8,
    loan_size_credit_limit_currency = "USD",
    sector_classification_system = "NACE",
    sector_classification_direct_loantaker = "D35.12"
  )

loanbook
#>   id_loan id_direct_loantaker name_direct_loantaker id_ultimate_parent name_ultimate_parent loan_size_outstanding loan_size_outstanding_currency loan_size_credit_limit loan_size_credit_limit_currency sector_classification_system sector_classification_direct_loantaker
#> 1      L1                C123              Acme Co.                C45        Acme Holdings                 1e+07                            USD                  1e+08                             USD                         NACE                                 D35.12
```

You have not been able to find a match in the ABCD after running
multiple iterations of the matching algorithm.

``` r
match_name(loanbook = loanbook, abcd = abcd_demo)
#> Warning: Found no match.
#> # A tibble: 0 × 20
#> # ℹ 20 variables: id_loan <chr>, id_direct_loantaker <chr>, name_direct_loantaker <chr>, id_ultimate_parent <chr>, name_ultimate_parent <chr>, loan_size_outstanding <dbl>, loan_size_outstanding_currency <chr>, loan_size_credit_limit <dbl>, loan_size_credit_limit_currency <chr>, sector_classification_system <chr>, sector_classification_direct_loantaker <chr>, id_2dii <lgl>, level <lgl>,
#> #   sector <lgl>, sector_abcd <lgl>, name <lgl>, name_abcd <lgl>, score <lgl>, source <lgl>, borderline <lgl>
match_name(loanbook = loanbook, abcd = abcd_demo, min_score = 0.7)
#> Warning: Found no match.
#> # A tibble: 0 × 20
#> # ℹ 20 variables: id_loan <chr>, id_direct_loantaker <chr>, name_direct_loantaker <chr>, id_ultimate_parent <chr>, name_ultimate_parent <chr>, loan_size_outstanding <dbl>, loan_size_outstanding_currency <chr>, loan_size_credit_limit <dbl>, loan_size_credit_limit_currency <chr>, sector_classification_system <chr>, sector_classification_direct_loantaker <chr>, id_2dii <lgl>, level <lgl>,
#> #   sector <lgl>, sector_abcd <lgl>, name <lgl>, name_abcd <lgl>, score <lgl>, source <lgl>, borderline <lgl>
match_name(loanbook = loanbook, abcd = abcd_demo, method = "cosine")
#> Warning: Found no match.
#> # A tibble: 0 × 20
#> # ℹ 20 variables: id_loan <chr>, id_direct_loantaker <chr>, name_direct_loantaker <chr>, id_ultimate_parent <chr>, name_ultimate_parent <chr>, loan_size_outstanding <dbl>, loan_size_outstanding_currency <chr>, loan_size_credit_limit <dbl>, loan_size_credit_limit_currency <chr>, sector_classification_system <chr>, sector_classification_direct_loantaker <chr>, id_2dii <lgl>, level <lgl>,
#> #   sector <lgl>, sector_abcd <lgl>, name <lgl>, name_abcd <lgl>, score <lgl>, source <lgl>, borderline <lgl>
```

Next, you have validated that “Acme Co.” is indeed in scope. Given the
financial exposure to this company is highly relevant for running a
meaningful PACTA analysis of your loanbook, you have now decided to
supplement the ABCD data set with additional data from a different
source.

Suppose you manage to compile the relevant data for Acme Co. from a
different source in a `my_custom_abcd.xlsx` file (following precisely
the same [format of ABCD
data](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/data_abcd.md)),
e.g.

my_custom_abcd.xlsx

You could now read in this XLSX file, merge the imported data with your
existing ABCD data by adding the rows to the bottom of the ABCD table,
and with the combined ABCD, you can now get a matched loan, when
re-running the matching process.

``` r
abcd_addition <- readxl::read_excel(path = file.path(tempdir(), "my_custom_abcd.xlsx"))

abcd_combined <- rbind(abcd_demo, abcd_addition)

match_name(loanbook = loanbook, abcd = abcd_combined)
#> # A tibble: 1 × 20
#>   id_loan id_direct_loantaker name_direct_loantaker id_ultimate_parent name_ultimate_parent loan_size_outstanding loan_size_outstanding_currency loan_size_credit_limit loan_size_credit_limit_currency sector_classification_system sector_classification_direct_loantaker id_2dii level            sector sector_abcd name     name_abcd score source   borderline
#>   <chr>   <chr>               <chr>                 <chr>              <chr>                                <dbl> <chr>                                           <dbl> <chr>                           <chr>                        <chr>                                  <chr>   <chr>            <chr>  <chr>       <chr>    <chr>     <dbl> <chr>    <lgl>     
#> 1 L1      C123                Acme Co.              C45                Acme Holdings                     10000000 USD                                         100000000 USD                             NACE                         D35.12                                 DL1     direct_loantaker power  power       Acme Co. Acme Co.      1 loanbook FALSE
```

### Note on Adding Manually Researched Data to the ABCD

While technically straightforward, manually supplementing ABCD data
requires careful validation:

- **Scope Consistency**: Ensure that production or emission intensity
  data aligns with ABCD’s sector definitions and value chain scope.
  Technology classifications should match existing ABCD conventions
  (e.g., hydro power is separate from renewable power, and plug-in
  hybrids are distinct from mild hybrids in the automotive sector).

- **Consolidation Method**: If a company does not fully own all
  production assets, its attributed production should follow the same
  consolidation method used in the ABCD. For instance, under an equity
  ownership approach, a company owning 50% of a power plant should only
  be assigned 50% of its capacity. Similarly, subsidiary production
  should be proportionally rolled up based on ownership stakes, while
  assets operated without ownership should be excluded. If the ABCD uses
  a different consolidation method (e.g., financial control), refer to
  the data provider’s documentation for alignment. For more on these
  consolidation methods, see the [PACTA for Banks Methodology
  Document](https://pacta.rmi.org/wp-content/uploads/2024/05/PACTA-for-Banks-Methodology-document_v1.2.3_030524.pdf),
  specifically sections “1.7.2.1 Financial Control (FC) Consolidation
  Methodology” and “1.7.2.2 Equity Ownership (EO) Consolidation
  Methodology”.

- **Data Formatting**: Ensure all necessary columns are included in the
  supplemented data for seamless integration. For details, see the [ABCD
  data
  dictionary](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/data_abcd.md).

------------------------------------------------------------------------

**PREVIOUS CHAPTER:** [Interpretation of
Results](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_interpretation.md)

**NEXT CHAPTER:**
[Metrics](https://rmi-pacta.github.io/pacta.loanbook/dev/articles/cookbook_metrics.md)
