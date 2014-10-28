
package WTSI::DNAP::Warehouse::Schema::Result::IseqProductMetric;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

WTSI::DNAP::Warehouse::Schema::Result::IseqProductMetric

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components('InflateColumn::DateTime');

=head1 TABLE: C<iseq_product_metrics>

=cut

__PACKAGE__->table('iseq_product_metrics');

=head1 ACCESSORS

=head2 id_iseq_pr_metrics_tmp

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

Internal to this database id, value can change

=head2 id_iseq_flowcell_tmp

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

Flowcell id, see 'iseq_flowcell.id_iseq_flowcell_tmp'

=head2 id_run

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

NPG run identifier

=head2 position

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

Flowcell lane number

=head2 tag_index

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

Tag index, NULL if lane is not a pool

=head2 tag_sequence4deplexing

  data_type: 'varchar'
  is_nullable: 1
  size: 30

Tag sequence used for deplexing the lane, common suffix might have been truncated

=head2 actual_forward_read_length

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

Actual forward read length, bp

=head2 actual_reverse_read_length

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

Actual reverse read length, bp

=head2 indexing_read_length

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

Indexing read length, bp

=head2 tag_decode_percent

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [5,2]

=head2 tag_decode_count

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 insert_size_quartile1

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 insert_size_quartile3

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 insert_size_median

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 gc_percent_forward_read

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [5,2]

=head2 gc_percent_reverse_read

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [5,2]

=head2 sequence_mismatch_percent_forward_read

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [4,2]

=head2 sequence_mismatch_percent_reverse_read

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [4,2]

=head2 adapters_percent_forward_read

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [5,2]

=head2 adapters_percent_reverse_read

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [5,2]

=head2 ref_match1_name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 ref_match1_percent

  data_type: 'float'
  is_nullable: 1
  size: [5,2]

=head2 ref_match2_name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 ref_match2_percent

  data_type: 'float'
  is_nullable: 1
  size: [5,2]

=head2 q20_yield_kb_forward_read

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 q20_yield_kb_reverse_read

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 q30_yield_kb_forward_read

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 q30_yield_kb_reverse_read

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 q40_yield_kb_forward_read

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 q40_yield_kb_reverse_read

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 bam_num_reads

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 bam_percent_mapped

  data_type: 'float'
  is_nullable: 1
  size: [5,2]

=head2 bam_percent_duplicate

  data_type: 'float'
  is_nullable: 1
  size: [5,2]

=head2 bam_human_percent_mapped

  data_type: 'float'
  is_nullable: 1
  size: [5,2]

=head2 bam_human_percent_duplicate

  data_type: 'float'
  is_nullable: 1
  size: [5,2]

=head2 genotype_sample_name_match

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 genotype_sample_name_relaxed_match

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 genotype_mean_depth

  data_type: 'float'
  is_nullable: 1
  size: [7,2]

=head2 mean_bait_coverage

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [6,2]

=head2 on_bait_percent

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [5,2]

=head2 on_or_near_bait_percent

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [5,2]

=head2 verify_bam_id_average_depth

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 verify_bam_id_score

  data_type: 'float'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [7,6]

=cut

__PACKAGE__->add_columns(
  'id_iseq_pr_metrics_tmp',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  'id_iseq_flowcell_tmp',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  'id_run',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  'position',
  {
    data_type => 'smallint',
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  'tag_index',
  { data_type => 'smallint', extra => { unsigned => 1 }, is_nullable => 1 },
  'tag_sequence4deplexing',
  { data_type => 'varchar', is_nullable => 1, size => 30 },
  'actual_forward_read_length',
  { data_type => 'smallint', extra => { unsigned => 1 }, is_nullable => 1 },
  'actual_reverse_read_length',
  { data_type => 'smallint', extra => { unsigned => 1 }, is_nullable => 1 },
  'indexing_read_length',
  { data_type => 'smallint', extra => { unsigned => 1 }, is_nullable => 1 },
  'tag_decode_percent',
  {
    data_type => 'float',
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [5, 2],
  },
  'tag_decode_count',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'insert_size_quartile1',
  { data_type => 'smallint', extra => { unsigned => 1 }, is_nullable => 1 },
  'insert_size_quartile3',
  { data_type => 'smallint', extra => { unsigned => 1 }, is_nullable => 1 },
  'insert_size_median',
  { data_type => 'smallint', extra => { unsigned => 1 }, is_nullable => 1 },
  'gc_percent_forward_read',
  {
    data_type => 'float',
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [5, 2],
  },
  'gc_percent_reverse_read',
  {
    data_type => 'float',
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [5, 2],
  },
  'sequence_mismatch_percent_forward_read',
  {
    data_type => 'float',
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [4, 2],
  },
  'sequence_mismatch_percent_reverse_read',
  {
    data_type => 'float',
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [4, 2],
  },
  'adapters_percent_forward_read',
  {
    data_type => 'float',
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [5, 2],
  },
  'adapters_percent_reverse_read',
  {
    data_type => 'float',
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [5, 2],
  },
  'ref_match1_name',
  { data_type => 'varchar', is_nullable => 1, size => 100 },
  'ref_match1_percent',
  { data_type => 'float', is_nullable => 1, size => [5, 2] },
  'ref_match2_name',
  { data_type => 'varchar', is_nullable => 1, size => 100 },
  'ref_match2_percent',
  { data_type => 'float', is_nullable => 1, size => [5, 2] },
  'q20_yield_kb_forward_read',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'q20_yield_kb_reverse_read',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'q30_yield_kb_forward_read',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'q30_yield_kb_reverse_read',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'q40_yield_kb_forward_read',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'q40_yield_kb_reverse_read',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'bam_num_reads',
  { data_type => 'bigint', extra => { unsigned => 1 }, is_nullable => 1 },
  'bam_percent_mapped',
  { data_type => 'float', is_nullable => 1, size => [5, 2] },
  'bam_percent_duplicate',
  { data_type => 'float', is_nullable => 1, size => [5, 2] },
  'bam_human_percent_mapped',
  { data_type => 'float', is_nullable => 1, size => [5, 2] },
  'bam_human_percent_duplicate',
  { data_type => 'float', is_nullable => 1, size => [5, 2] },
  'genotype_sample_name_match',
  { data_type => 'varchar', is_nullable => 1, size => 8 },
  'genotype_sample_name_relaxed_match',
  { data_type => 'varchar', is_nullable => 1, size => 8 },
  'genotype_mean_depth',
  { data_type => 'float', is_nullable => 1, size => [7, 2] },
  'mean_bait_coverage',
  {
    data_type => 'float',
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [6, 2],
  },
  'on_bait_percent',
  {
    data_type => 'float',
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [5, 2],
  },
  'on_or_near_bait_percent',
  {
    data_type => 'float',
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [5, 2],
  },
  'verify_bam_id_average_depth',
  { data_type => 'smallint', extra => { unsigned => 1 }, is_nullable => 1 },
  'verify_bam_id_score',
  {
    data_type => 'float',
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [7, 6],
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_iseq_pr_metrics_tmp>

=back

=cut

__PACKAGE__->set_primary_key('id_iseq_pr_metrics_tmp');

=head1 RELATIONS

=head2 iseq_flowcell

Type: belongs_to

Related object: L<WTSI::DNAP::Warehouse::Schema::Result::IseqFlowcell>

=cut

__PACKAGE__->belongs_to(
  'iseq_flowcell',
  'WTSI::DNAP::Warehouse::Schema::Result::IseqFlowcell',
  { id_iseq_flowcell_tmp => 'id_iseq_flowcell_tmp' },
  {
    is_deferrable => 1,
    join_type     => 'LEFT',
    on_delete     => 'SET NULL',
    on_update     => 'NO ACTION',
  },
);

=head2 iseq_run_lane_metric

Type: belongs_to

Related object: L<WTSI::DNAP::Warehouse::Schema::Result::IseqRunLaneMetric>

=cut

__PACKAGE__->belongs_to(
  'iseq_run_lane_metric',
  'WTSI::DNAP::Warehouse::Schema::Result::IseqRunLaneMetric',
  { id_run => 'id_run', position => 'position' },
  { is_deferrable => 1, on_delete => 'CASCADE', on_update => 'NO ACTION' },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2014-10-28 10:26:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/eeRatjwnU8PZ8zuzWxlXg

our $VERSION = '0';

##no critic (ProhibitStringyEval ProhibitPostfixControls ProhibitInterpolationOfLiterals)
with 'npg_qc::autoqc::role::rpt_key' if eval "require npg_qc::autoqc::role::rpt_key";
##use critic

__PACKAGE__->meta->make_immutable;

1;
__END__

=head1 SYNOPSIS

=head1 DESCRIPTION

Result class definition in DBIx binding for the multi-lims warehouse database.

=head1 DIAGNOSTICS

=head1 CONFIGURATION AND ENVIRONMENT

=head1 SUBROUTINES/METHODS

=head1 DEPENDENCIES

=over

=item strict

=item warnings

=item Moose

=item MooseX::NonMoose

=item MooseX::MarkAsMethods

=item DBIx::Class::Core

=item DBIx::Class::InflateColumn::DateTime

=back

=head1 INCOMPATIBILITIES

=head1 BUGS AND LIMITATIONS

=head1 AUTHOR

Marina Gourtovaia E<lt>mg8@sanger.ac.ukE<gt>

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2014 Genome Research Limited

This file is part of the ml_warehouse package L<https://github.com/wtsi-npg/ml_warehouse>.

NPG is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

=cut
