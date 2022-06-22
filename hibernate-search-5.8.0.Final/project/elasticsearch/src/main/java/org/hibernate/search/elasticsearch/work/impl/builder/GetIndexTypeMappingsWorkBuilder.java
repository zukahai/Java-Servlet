/*
 * Hibernate Search, full-text search for your domain model
 *
 * License: GNU Lesser General Public License (LGPL), version 2.1 or later
 * See the lgpl.txt file in the root directory or <http://www.gnu.org/licenses/lgpl-2.1.html>.
 */
package org.hibernate.search.elasticsearch.work.impl.builder;

import java.util.Map;

import org.hibernate.search.elasticsearch.schema.impl.model.TypeMapping;
import org.hibernate.search.elasticsearch.work.impl.ElasticsearchWork;

/**
 * @author Yoann Rodiere
 */
public interface GetIndexTypeMappingsWorkBuilder extends ElasticsearchWorkBuilder<ElasticsearchWork<Map<String, TypeMapping>>> {

}
