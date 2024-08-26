class Organization {
  final String name;
  final String endDate;
  final String applicationLink;
  final String logoPath;

  Organization({
    required this.name,
    required this.endDate,
    required this.applicationLink,
    required this.logoPath,
  });
}

List<Organization> organizations = [
  Organization(
    name: 'AIESEC in USJ',
    endDate: '2024-09-30',
    applicationLink: 'https://example.com/apply1',
    logoPath: 'assets/logos/AIESEC.jpg',
  ),
  Organization(
    name: 'Adventure Club',
    endDate: '2024-10-15',
    applicationLink: 'https://example.com/apply2',
    logoPath: 'assets/logos/jac.jpeg',
  ),
  Organization(
    name: 'Leo Club',
    endDate: '2024-11-01',
    applicationLink: 'https://example.com/apply3',
    logoPath: 'assets/logos/Leo.png',
  ),
  Organization(
    name: 'IEEE USJ',
    endDate: '2024-11-01',
    applicationLink: 'https://example.com/apply3',
    logoPath: 'assets/logos/IEEE.png',
  ),
  Organization(
    name: 'Flair Club',
    endDate: '2024-11-01',
    applicationLink: 'https://example.com/apply3',
    logoPath: 'assets/logos/flair.jpeg',
  ),
  Organization(
    name: 'Astro Club',
    endDate: '2024-11-01',
    applicationLink: 'https://example.com/apply3',
    logoPath: 'assets/logos/astronomy.jpg',
  ),
  Organization(
    name: 'Viking Club',
    endDate: '2024-11-01',
    applicationLink: 'https://example.com/apply3',
    logoPath: 'assets/logos/viking.jpeg',
  ),
];
